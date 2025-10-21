import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:editorjs_flutter/src/model/editor_js_data.dart';
import 'package:editorjs_flutter/src/model/editor_js_view_styles.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class EditorJSView extends StatefulWidget {
  final EditorJSData? data;
  final EditorJSViewStyles? styles;

  /// A function that defines what to do when a link is tapped
  final FutureOr<bool> Function(String)? onLinkTap;

  /// A function that defines what to do when an anchor link is tapped. When this value is set,
  /// the default anchor behaviour is overwritten.
  // final OnTap? onAnchorTap;

  const EditorJSView({
    Key? key,
    this.data,
    this.styles,
    this.onLinkTap,
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

    widget.data?.blocks?.forEach(
      (element) {
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
            List<String> list = [];
            String data = '';
            for (final item in rawItems) {
              list.add('<li>${item is String ? item : item.toString()}</li>');
            }
            if (style == 'ordered') {
              data = '<ol>${list.join()}</ol>';
            } else {
              data = '<ul>${list.join()}</ul>';
            }
            items.add(HtmlWidget(
              data,
              onTapUrl: widget.onLinkTap,
            ));
            break;
          case "delimiter":
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(child: Divider(color: Colors.grey))
            ]));
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
                  border: withBorder ? Border.all(color: Colors.grey.shade400) : null,
                ),
                padding: withBackground ? const EdgeInsets.all(8.0) : null,
                child: imageWidget,
              );

              final children = <Widget>[decorated];
              if (caption != null && caption.isNotEmpty) {
                children.add(Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    caption,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
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

            if (service == 'youtube' && (embedUrl != null && embedUrl.isNotEmpty)) {
              final iframe = '<iframe width="$width" height="$height" src="$embedUrl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>';
              items.add(HtmlWidget(
                iframe,
                onTapUrl: widget.onLinkTap,
              ));
              if (d?.caption != null && d!.caption!.isNotEmpty) {
                items.add(Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(d.caption!),
                ));
              }
            } else if ((embedUrl != null && embedUrl.isNotEmpty) || (sourceUrl != null && sourceUrl.isNotEmpty)) {
              final url = embedUrl ?? sourceUrl!;
              // Generic iframe attempt; if not supported on platform, user can tap the link below
              final iframe = '<iframe width="$width" height="$height" src="$url" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
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
                items.add(Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(d.caption!),
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
            final TextAlign textAlign = align == 'center' ? TextAlign.center : TextAlign.left;

            items.add(Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey.shade400, width: 4),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: align == 'center' ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    textAlign: textAlign,
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                  ),
                  if (caption != null && caption.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    Text(
                      '— $caption',
                      textAlign: textAlign,
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    ),
                  ]
                ],
              ),
            ));
            break;
          case "checklist":
            final rawItems = element.data?.items ?? [];
            final children = <Widget>[];
            for (final item in rawItems) {
              String text = '';
              bool checked = false;
              if (item is Map) {
                final map = Map<String, dynamic>.from(item);
                text = map['text']?.toString() ?? '';
                checked = map['checked'] == true;
              } else {
                text = item.toString();
              }
              children.add(Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(value: checked, onChanged: null),
                  Expanded(child: Text(text)),
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
