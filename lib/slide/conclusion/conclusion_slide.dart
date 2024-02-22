import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/conclusion/conclusion_page.dart';

class ConclusionSlide extends FlutterDeckSlideWidget {
  const ConclusionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conclusion-slide',
            title: 'まとめ',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const ConclusionPage(),
      headerBuilder: (context) {
        return const FlutterDeckHeader(
          title: 'まとめ',
        );
      },
    );
  }
}
