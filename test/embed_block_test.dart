import 'package:editorjs_flutter/editorjs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

/// The Vimeo embed block as the backend stores it (EditorJS 2.31.0): the
/// embed URL is HTML-escaped.
Map<String, dynamic> _vimeo({
  String source = 'https://player.vimeo.com/video/1233405134',
  String embed =
      'https://player.vimeo.com/video/1233405134?title=0&amp;byline=0',
  String caption = '',
}) =>
    {
      'id': 'Yy7MJW-qTb',
      'type': 'embed',
      'data': {
        'service': 'vimeo',
        'source': source,
        'embed': embed,
        'width': 580,
        'height': 320,
        'caption': caption,
      },
    };

/// Renders [block], runs [check] on the tree, then unmounts it. Widget tests
/// have no platform web view, so an iframe's WebView throws when it builds
/// and again when it is torn down; those errors are dropped here, and the
/// checks only read the widgets around it.
Future<void> _render(
  WidgetTester tester,
  Map<String, dynamic> block,
  void Function() check,
) async {
  final onError = FlutterError.onError;
  FlutterError.onError = (details) {
    if ('${details.exception}'.startsWith('LateInitializationError')) return;
    onError?.call(details);
  };
  try {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: EditorJSView(
            data: EditorJSData.fromJson({
              'time': 1791939723799,
              'version': '2.31.0',
              'blocks': [block],
            }),
          ),
        ),
      ),
    ));
    check();
    await tester.pumpWidget(const SizedBox());
  } finally {
    FlutterError.onError = onError;
  }
}

String _iframe(WidgetTester tester) =>
    tester.widget<HtmlWidget>(find.byType(HtmlWidget)).html;

Finder _linkContaining(String text) =>
    find.byWidgetPredicate((w) => w is Text && (w.data ?? '').contains(text));

void main() {
  group('vimeoVideoId', () {
    test('reads player and page URLs', () {
      expect(vimeoVideoId('https://player.vimeo.com/video/1233405134'),
          '1233405134');
      expect(
          vimeoVideoId(
              'https://player.vimeo.com/video/1233405134?title=0&byline=0'),
          '1233405134');
      expect(vimeoVideoId('https://vimeo.com/76979871'), '76979871');
      expect(vimeoVideoId('https://www.vimeo.com/76979871#t=5'), '76979871');
    });

    test('is null for anything else', () {
      expect(vimeoVideoId(null), isNull);
      expect(vimeoVideoId(''), isNull);
      expect(vimeoVideoId('https://vimeo.com/channels/staffpicks'), isNull);
      expect(vimeoVideoId('https://notvimeo.com/123'), isNull);
      expect(vimeoVideoId('https://vimeo.com/123abc'), isNull);
    });
  });

  test('vimeoPlayerUrl keeps the embed query', () {
    expect(
      vimeoPlayerUrl('1233405134',
          'https://player.vimeo.com/video/1233405134?title=0&byline=0'),
      'https://player.vimeo.com/video/1233405134?title=0&byline=0',
    );
    expect(
        vimeoPlayerUrl('76979871'), 'https://player.vimeo.com/video/76979871');
  });

  testWidgets('a vimeo embed plays without the url link', (tester) async {
    await _render(tester, _vimeo(), () {
      expect(
          _iframe(tester),
          contains(
              'src="https://player.vimeo.com/video/1233405134?title=0&byline=0"'));
      expect(_iframe(tester), isNot(contains('&amp;')));
      expect(_iframe(tester), isNot(contains('width=')));
      expect(_linkContaining('vimeo.com'), findsNothing);
      expect(find.byType(GestureDetector), findsNothing);
    });
  });

  testWidgets('a vimeo embed keeps its caption', (tester) async {
    await _render(tester, _vimeo(caption: 'Breathing &amp; calm'), () {
      expect(find.text('Breathing & calm'), findsOneWidget);
      expect(_linkContaining('vimeo.com'), findsNothing);
    });
  });

  testWidgets('a vimeo embed without a video id falls back to the link',
      (tester) async {
    await _render(
        tester,
        _vimeo(
          source: 'https://vimeo.com/channels/staffpicks',
          embed: 'https://vimeo.com/channels/staffpicks',
        ), () {
      expect(
          find.text('https://vimeo.com/channels/staffpicks'), findsOneWidget);
    });
  });

  testWidgets('another service keeps the iframe and its decoded link',
      (tester) async {
    await _render(tester, {
      'id': 'cp',
      'type': 'embed',
      'data': {
        'service': 'codepen',
        'source': 'https://codepen.io/a/pen/xyz',
        'embed': 'https://codepen.io/a/embed/xyz?height=300&amp;theme-id=0',
        'width': 600,
        'height': 300,
        'caption': '',
      },
    }, () {
      expect(_iframe(tester), contains('width="600"'));
      expect(
        find.text('https://codepen.io/a/embed/xyz?height=300&theme-id=0'),
        findsOneWidget,
      );
    });
  });
}
