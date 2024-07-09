import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:editorjs_flutter/src/model/EditorJSData.dart';
import 'package:editorjs_flutter/src/model/EditorJSViewStyles.dart';
import 'package:editorjs_flutter/src/model/EditorJSCSSTag.dart';
import 'package:flutter_html/flutter_html.dart';

class EditorJSView extends StatefulWidget {
  final EditorJSData? data;
  final EditorJSViewStyles? styles;

  const EditorJSView({Key? key, this.data, this.styles}) : super(key: key);

  @override
  EditorJSViewState createState() => EditorJSViewState();
}

class EditorJSViewState extends State<EditorJSView> {
  String? data;
  final List<Widget> items = <Widget>[];
  late Map<String, Style> customStyleMap;

  @override
  void initState() {
    super.initState();

    customStyleMap = generateStylemap(widget.styles?.cssTags);

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
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(
                child: Text(
                  element.data!.text!,
                  style: TextStyle(
                      fontSize: levelFontSize,
                      fontWeight: (element.data!.level! <= 3)
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              )
            ]));
            break;
          case "paragraph":
            items.add(Html(
              data: element.data!.text,
              style: customStyleMap,
              shrinkWrap: true,
            ));
            break;
          case "list":
            String? style = element.data!.style;
            List<String> list = [];
            String data = '';
            element.data!.items!.forEach(
              (element) {
                list.add(
                  '<li>$element</li>',
                );
              },
            );
            if (style == 'ordered') {
              data = '<ol>${list.join()}</ol>';
            } else {
              data = '<ul>${list.join()}</ul>';
            }
            items.add(
              Html(
                data: data,
                style: {
                  ...customStyleMap,
                  'ol': Style(
                      padding: HtmlPaddings.zero,
                      margin: Margins.symmetric(horizontal: 20)),
                  'ul': Style(
                      padding: HtmlPaddings.zero,
                      margin: Margins.symmetric(horizontal: 20)),
                },
                shrinkWrap: true,
              ),
            );
            break;
          case "delimiter":
            items.add(
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              // Text('***', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
              Expanded(child: Divider(color: Colors.grey))
            ]));
            break;
          case "image":
            items.add(Image.network(element.data!.file!.url!));
            break;
        }
        items.add(const SizedBox(height: 10));
      },
    );
  }

  Map<String, Style> generateStylemap(List<EditorJSCSSTag>? styles) {
    Map<String, Style> map = <String, Style>{};

    styles?.forEach(
      (element) {
        map.putIfAbsent(
            element.tag.toString(),
            () => Style(
                margin: Margins.zero,
                backgroundColor: (element.backgroundColor != null)
                    ? getColor(element.backgroundColor!)
                    : null,
                color:
                    (element.color != null) ? getColor(element.color!) : null,
                padding: HtmlPaddings.all(element.padding ?? 0)));
      },
    );

    return map;
  }

  Color getColor(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: items);
  }
}
