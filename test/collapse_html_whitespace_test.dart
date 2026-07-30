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
}
