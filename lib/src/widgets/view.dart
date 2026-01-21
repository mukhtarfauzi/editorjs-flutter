import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:editorjs_flutter/editorjs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:editorjs_flutter/src/model/editor_js_data.dart';
import 'package:editorjs_flutter/src/model/editor_js_view_styles.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class EditorJSView extends StatefulWidget {
  final EditorJSData? data;
  final EditorJSViewStyles? styles;

  /// A function that defines what to do when a link is tapped
  final FutureOr<bool> Function(String)? onLinkTap;

  /// Callback when a checklist checkbox is toggled. Returns the item's id and new value.
  final void Function(String id, bool value)? onCheckboxChanged;

  /// Custom tag replacer function that allows replacing specific block types with custom widgets.
  /// Returns a Widget if the tag should be replaced, or null to use default rendering.
  /// Parameters: blockType (e.g., "header", "paragraph"), blockData (EditorJSBlockData), and blockIndex
  final Widget? Function(EditorJSBlock, int blockIndex)? customWidgetBuilder;

  /// A function that defines what to do when an anchor link is tapped. When this value is set,
  /// the default anchor behaviour is overwritten.
  // final OnTap? onAnchorTap;

  const EditorJSView({
    Key? key,
    this.data,
    this.styles,
    this.onLinkTap,
    this.onCheckboxChanged,
    this.customWidgetBuilder,
    // this.onAnchorTap,
  }) : super(key: key);

  @override
  EditorJSViewState createState() => EditorJSViewState();
}

class EditorJSViewState extends State<EditorJSView> {
  String? data;
  final List<Widget> items = <Widget>[];
  // late Map<String, Style> customStyleMap;

  @override
  void initState() {
    super.initState();

    // customStyleMap = generateStylemap(widget.styles?.cssTags);

    widget.data?.blocks?.forEachIndexed(
      (index, element) {
        // Check if user wants to replace this block type with custom widget
        if (widget.customWidgetBuilder != null) {
          final customWidget = widget.customWidgetBuilder!(
            element,
            index,
          );
          if (customWidget != null) {
            items.add(customWidget);
            items.add(const SizedBox(height: 10));
            return; // Skip default rendering
          }
        }

        double levelFontSize = 16;

        switch (element.data!.level) {
          case 1:
            levelFontSize = 32;
            break;
          case 2:
            levelFontSize = 24;
            break;
          case 3:
            levelFontSize = 16;
            break;
          case 4:
            levelFontSize = 12;
            break;
          case 5:
            levelFontSize = 10;
            break;
          case 6:
            levelFontSize = 8;
            break;
        }

        switch (element.type) {
          case "header":
            final fontWeight = (element.data!.level! <= 3)
                ? FontWeight.bold
                : FontWeight.normal;
            Color? color = null;
            if (widget.styles != null) {
              final foundGlobalStyle = widget.styles?.cssTags
                  ?.firstWhereOrNull(((css) => css.tag == 'header'));
              if (foundGlobalStyle != null && foundGlobalStyle.color != null) {
                final colorHex = foundGlobalStyle.color!;
                color = getColor(colorHex);
              }
            }
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(
                child: Text(
                  element.data!.text!,
                  style: TextStyle(
                      fontSize: levelFontSize,
                      fontWeight: fontWeight,
                      color: color),
                ),
              )
            ]));
            break;
          case "paragraph":
            items.add(
              HtmlWidget(
                '<p class="custom">${element.data!.text}</p>',
                onTapUrl: widget.onLinkTap,
                customStylesBuilder: (el) {
                  if (widget.styles != null) {
                    final foundGlobalStyle = widget.styles?.cssTags
                        ?.firstWhereOrNull(((css) => css.tag == 'p'));

                    log("Found Global Style: ${foundGlobalStyle?.toJson()}",
                        name: "editorjs");
                    if (foundGlobalStyle != null) {
                      final style = foundGlobalStyle
                          .toJson()
                          .map((key, value) => MapEntry(key, '$value'));
                      return style;
                    }
                  }
                  if (el.className.contains('custom') &&
                      element.data?.style != null) {
                    return jsonDecode(element.data!.style!);
                  }
                  return null;
                },
              ),
            );
            break;
          case "list":
            String? style = element.data!.style;
            final rawItems = element.data!.items ?? [];

            if (style == 'checklist') {
              final children = <Widget>[];
              // Global styles for checklist components
              final checkboxStyleTag = widget.styles?.cssTags
                  ?.firstWhereOrNull(((css) => css.tag == 'checkbox'));
              final Color? checkboxActiveColor = checkboxStyleTag?.color != null
                  ? getColor(checkboxStyleTag!.color!)
                  : null;
              final textStyleTag = widget.styles?.cssTags
                  ?.firstWhereOrNull(((css) => css.tag == 'text'));
              final Color? checklistTextColor = textStyleTag?.color != null
                  ? getColor(textStyleTag!.color!)
                  : null;

              for (int i = 0; i < rawItems.length; i++) {
                final item = rawItems[i];
                String content = '';
                bool checked = false;
                String id = 'checklist_$i';

                if (item is Map) {
                  content = item['content'] ?? item['text'] ?? '';
                  if (item['meta'] is Map && item['meta']['checked'] != null) {
                    checked = item['meta']['checked'] == true;
                  } else if (item['checked'] != null) {
                    checked = item['checked'] == true;
                  }
                } else {
                  content = item.toString();
                }

                children.add(Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: checked,
                      checkColor: checkboxActiveColor,
                      side: WidgetStateBorderSide.resolveWith((states) =>
                          BorderSide(
                            color: checkboxActiveColor ?? Colors.grey.shade400,
                          )),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onChanged: (bool? value) {
                        final bool newVal = value ?? false;
                        if (widget.onCheckboxChanged != null) {
                          widget.onCheckboxChanged!(id, newVal);
                        }
                      },
                    ),
                    Expanded(
                        child: Text(content,
                            style: TextStyle(color: checklistTextColor))),
                  ],
                ));
              }
              items.add(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ));
            } else {
              List<String> list = [];
              String data = '';
              for (final item in rawItems) {
                if (item is Map) {
                  list.add('<li>${item['content'] ?? item['text'] ?? ''}</li>');
                } else {
                  list.add(
                      '<li>${item is String ? item : item.toString()}</li>');
                }
              }
              if (style == 'ordered') {
                data = '<ol>${list.join()}</ol>';
              } else {
                data = '<ul>${list.join()}</ul>';
              }
              items.add(HtmlWidget(
                data,
                onTapUrl: widget.onLinkTap,
                customStylesBuilder: (el) {
                  // Apply global style for list blocks
                  final foundGlobalStyle = widget.styles?.cssTags
                      ?.firstWhereOrNull(((css) => css.tag == 'list'));
                  if (foundGlobalStyle != null &&
                      (el.localName == 'ul' || el.localName == 'ol')) {
                    final styleMap = foundGlobalStyle
                        .toJson()
                        .map((key, value) => MapEntry(key, '$value'));
                    return styleMap;
                  }
                  return null;
                },
              ));
            }
            break;
          case "delimiter":
            items.add(Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Expanded(child: Divider(color: Colors.grey))]));
            break;
          case "image":
            final d = element.data;
            final String? url = d?.file?.url;
            final String? caption = d?.caption;
            final bool withBorder = d?.withBorder == true;
            final bool withBackground = d?.withBackground == true;
            final bool stretched = d?.stretched == true;

            if (url != null && url.isNotEmpty) {
              final imageWidget = Image.network(
                url,
                fit: BoxFit.contain,
              );

              Widget decorated = Container(
                width: stretched ? double.infinity : null,
                decoration: BoxDecoration(
                  color: withBackground ? Colors.grey.shade200 : null,
                  border: withBorder
                      ? Border.all(color: Colors.grey.shade400)
                      : null,
                ),
                padding: withBackground ? const EdgeInsets.all(8.0) : null,
                child: imageWidget,
              );

              final children = <Widget>[decorated];
              if (caption != null && caption.isNotEmpty) {
                final foundCaptionStyle = widget.styles?.cssTags
                    ?.firstWhereOrNull(((css) => css.tag == 'caption'));
                final captionColor = foundCaptionStyle?.color != null
                    ? getColor(foundCaptionStyle!.color!)
                    : null;
                final captionBg = foundCaptionStyle?.backgroundColor != null
                    ? getColor(foundCaptionStyle!.backgroundColor!)
                    : null;
                final EdgeInsets captionPadding =
                    foundCaptionStyle?.padding != null
                        ? EdgeInsets.all(foundCaptionStyle!.padding!)
                        : const EdgeInsets.only(top: 6.0);

                children.add(Padding(
                  padding: captionPadding,
                  child: Container(
                    color: captionBg,
                    child: Text(
                      caption,
                      style: TextStyle(color: captionColor, fontSize: 12),
                    ),
                  ),
                ));
              }
              items.add(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ));
            } else {
              items.add(const Text('Image: missing URL'));
            }
            break;
          case "raw":
            if (element.data?.html != null) {
              items.add(HtmlWidget(
                element.data!.html!,
                onTapUrl: widget.onLinkTap,
              ));
            }
            break;
          case "embed":
            final d = element.data;
            final String? service = d?.service;
            final String? embedUrl = d?.embed;
            final String? sourceUrl = d?.source;
            final int width = d?.width ?? 560;
            final int height = d?.height ?? 315;

            if (service == 'youtube' &&
                (embedUrl != null && embedUrl.isNotEmpty)) {
              final videoId = YoutubePlayerController.convertUrlToId(embedUrl);

              if (videoId != null) {
                final controller = YoutubePlayerController.fromVideoId(
                  videoId: videoId,
                  autoPlay: false,
                  params: const YoutubePlayerParams(
                      showControls: true,
                      mute: false,
                      showFullscreenButton: true,
                      loop: false,
                      origin: 'https://www.youtube-nocookie.com'),
                );
                items.add(
                  YoutubePlayer(
                    controller: controller,
                    aspectRatio: 16 / 9,
                  ),
                );
              } else {
                final iframe =
                    '<iframe width="$width" height="$height" src="$embedUrl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>';
                items.add(HtmlWidget(
                  iframe,
                  onTapUrl: widget.onLinkTap,
                ));
              }
              if (d?.caption != null && d!.caption!.isNotEmpty) {
                final foundCaptionStyle = widget.styles?.cssTags
                    ?.firstWhereOrNull(((css) => css.tag == 'caption'));
                final captionColor = foundCaptionStyle?.color != null
                    ? getColor(foundCaptionStyle!.color!)
                    : null;
                final captionBg = foundCaptionStyle?.backgroundColor != null
                    ? getColor(foundCaptionStyle!.backgroundColor!)
                    : null;
                final EdgeInsets captionPadding =
                    foundCaptionStyle?.padding != null
                        ? EdgeInsets.all(foundCaptionStyle!.padding!)
                        : const EdgeInsets.only(top: 6.0);
                items.add(Padding(
                  padding: captionPadding,
                  child: Container(
                    color: captionBg,
                    child:
                        Text(d.caption!, style: TextStyle(color: captionColor)),
                  ),
                ));
              }
            } else if ((embedUrl != null && embedUrl.isNotEmpty) ||
                (sourceUrl != null && sourceUrl.isNotEmpty)) {
              final url = embedUrl ?? sourceUrl!;
              // Generic iframe attempt; if not supported on platform, user can tap the link below
              final iframe =
                  '<iframe width="$width" height="$height" src="$url" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
              items.add(HtmlWidget(
                iframe,
                onTapUrl: widget.onLinkTap,
              ));
              items.add(GestureDetector(
                onTap: () => _openUrl(url),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(url, style: const TextStyle(color: Colors.blue)),
                ),
              ));
              if (d?.caption != null && d!.caption!.isNotEmpty) {
                final foundCaptionStyle = widget.styles?.cssTags
                    ?.firstWhereOrNull(((css) => css.tag == 'caption'));
                final captionColor = foundCaptionStyle?.color != null
                    ? getColor(foundCaptionStyle!.color!)
                    : null;
                final captionBg = foundCaptionStyle?.backgroundColor != null
                    ? getColor(foundCaptionStyle!.backgroundColor!)
                    : null;
                final EdgeInsets captionPadding =
                    foundCaptionStyle?.padding != null
                        ? EdgeInsets.all(foundCaptionStyle!.padding!)
                        : const EdgeInsets.only(top: 6.0);
                items.add(Padding(
                  padding: captionPadding,
                  child: Container(
                    color: captionBg,
                    child:
                        Text(d.caption!, style: TextStyle(color: captionColor)),
                  ),
                ));
              }
            } else {
              items.add(const Text('Embed: unsupported or missing URL'));
            }
            break;
          case "quote":
            final q = element.data;
            final String text = q?.text ?? '';
            final String? caption = q?.caption;
            final String align = (q?.alignment ?? 'left').toLowerCase();
            final TextAlign textAlign =
                align == 'center' ? TextAlign.center : TextAlign.left;

            // Apply global text style if provided
            final textStyleTag = widget.styles?.cssTags
                ?.firstWhereOrNull(((css) => css.tag == 'text'));
            final Color? globalTextColor = textStyleTag?.color != null
                ? getColor(textStyleTag!.color!)
                : null;

            items.add(Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey.shade400, width: 4),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: align == 'center'
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    textAlign: textAlign,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        color: globalTextColor),
                  ),
                  if (caption != null && caption.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    Builder(builder: (context) {
                      final foundCaptionStyle = widget.styles?.cssTags
                          ?.firstWhereOrNull(((css) => css.tag == 'caption'));
                      final Color? captionColor =
                          foundCaptionStyle?.color != null
                              ? getColor(foundCaptionStyle!.color!)
                              : null;
                      final EdgeInsets captionPadding =
                          foundCaptionStyle?.padding != null
                              ? EdgeInsets.all(foundCaptionStyle!.padding!)
                              : EdgeInsets.zero;
                      return Padding(
                        padding: captionPadding,
                        child: Text(
                          '— $caption',
                          textAlign: textAlign,
                          style: TextStyle(color: captionColor, fontSize: 14),
                        ),
                      );
                    })
                  ]
                ],
              ),
            ));
            break;
          case "checklist":
            final rawItems = element.data?.items ?? [];
            final children = <Widget>[];

            // Global styles for checklist components
            final checkboxStyleTag = widget.styles?.cssTags
                ?.firstWhereOrNull(((css) => css.tag == 'checkbox'));
            final Color? checkboxActiveColor = checkboxStyleTag?.color != null
                ? getColor(checkboxStyleTag!.color!)
                : null;
            final textStyleTag = widget.styles?.cssTags
                ?.firstWhereOrNull(((css) => css.tag == 'text'));
            final Color? checklistTextColor = textStyleTag?.color != null
                ? getColor(textStyleTag!.color!)
                : null;

            for (int i = 0; i < rawItems.length; i++) {
              final item = rawItems[i];
              String text = '';
              bool checked = false;
              String id = 'checklist_$i';
              if (item is Map) {
                final map = Map<String, dynamic>.from(item);
                text = map['text']?.toString() ??
                    map['content']?.toString() ??
                    '';
                if (map['checked'] != null) {
                  checked = map['checked'] == true;
                } else if (map['meta'] is Map &&
                    map['meta']['checked'] != null) {
                  checked = map['meta']['checked'] == true;
                }
                if (map.containsKey('id') && map['id'] != null) {
                  id = map['id'].toString();
                }
              } else {
                text = item.toString();
              }
              children.add(Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checked,
                    checkColor: checkboxActiveColor,
                    side: checkboxActiveColor != null
                        ? BorderSide(color: checkboxActiveColor, width: 2)
                        : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onChanged: (bool? value) {
                      final bool newVal = value ?? false;
                      if (widget.onCheckboxChanged != null) {
                        widget.onCheckboxChanged!(id, newVal);
                      }
                    },
                  ),
                  Expanded(
                      child: Text(text,
                          style: TextStyle(color: checklistTextColor))),
                ],
              ));
            }
            items.add(Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ));
            break;
        }
        items.add(const SizedBox(height: 10));
      },
    );
  }

  Color? getColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    } else if (hexColor.length == 6) {
      return Color(int.parse('0xFF$hexColor'));
    } else {
      return null;
    }
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.tryParse(url);
    if (uri != null) {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.platformDefault);
      }
    }
  }

  String? _extractYouTubeId(String url) {
    final RegExp re = RegExp(r'youtube\.com\/embed\/([a-zA-Z0-9_-]+)');
    final m = re.firstMatch(url);
    return m != null ? m.group(1) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: items);
  }
}

class EditorBlockRenderer extends StatelessWidget {
  final List<dynamic> blocks;

  EditorBlockRenderer({required this.blocks});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
