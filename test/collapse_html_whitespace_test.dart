import 'package:editorjs_flutter/editorjs_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('collapseHtmlWhitespace', () {
    test('collapses the soft line-wraps Word-pasted headers carry', () {
      expect(collapseHtmlWhitespace('The final\nleaderboard'),
          'The final leaderboard');
      expect(collapseHtmlWhitespace('Rider\nSpotlight:'), 'Rider Spotlight:');
      expect(
        collapseHtmlWhitespace(
            'Nelle\nMadera: Dubai - Technical Support, Creation (P&B)'),
        'Nelle Madera: Dubai - Technical Support, Creation (P&B)',
      );
    });

    test('leaves text without line-wraps untouched', () {
      expect(collapseHtmlWhitespace('Rounding out the top 10'),
          'Rounding out the top 10');
    });

    test('collapses tabs, carriage returns and repeated spaces', () {
      expect(collapseHtmlWhitespace('a\r\nb\tc  d'), 'a b c d');
    });

    test('trims leading and trailing whitespace', () {
      expect(collapseHtmlWhitespace('\n  Kind regards,  \n'), 'Kind regards,');
    });

    test('preserves non-breaking spaces, they are significant in HTML', () {
      expect(collapseHtmlWhitespace('a b'), 'a b');
    });
  });

  group('decodeHtmlEntities', () {
    test('decodes named entities', () {
      expect(decodeHtmlEntities('Creation (P&amp;B)'), 'Creation (P&B)');
      expect(decodeHtmlEntities('&lt;tag&gt;'), '<tag>');
      expect(decodeHtmlEntities('a&nbsp;b'), 'a b');
    });

    test('decodes decimal and hex numeric entities', () {
      expect(decodeHtmlEntities('&#39;quoted&#39;'), "'quoted'");
      expect(decodeHtmlEntities('&#x2014;'), '—');
    });

    test('does not re-scan the ampersand it produces', () {
      expect(decodeHtmlEntities('&amp;lt;'), '&lt;');
    });

    test('leaves unknown entities intact rather than dropping them', () {
      expect(decodeHtmlEntities('&notanentity;'), '&notanentity;');
    });
  });

  group('htmlToPlainText', () {
    test('strips tags, decodes entities and collapses whitespace', () {
      expect(
        htmlToPlainText('<b>Nelle\nMadera</b>: Creation (P&amp;B)'),
        'Nelle Madera: Creation (P&B)',
      );
    });
  });

  group('isBlankHtml', () {
    test('treats Word spacer blocks as blank', () {
      expect(isBlankHtml('<b>&nbsp;</b>'), isTrue);
      expect(isBlankHtml('<b><i>&nbsp;</i></b>'), isTrue);
      expect(isBlankHtml(''), isTrue);
      expect(isBlankHtml(null), isTrue);
    });

    test('keeps blocks that carry visible content', () {
      expect(isBlankHtml('<b>Dear colleagues,</b>'), isFalse);
      expect(isBlankHtml('Muriël Thijssen\n'), isFalse);
    });
  });
}
