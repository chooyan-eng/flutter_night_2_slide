import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/introduction/introduction_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroductionSlide extends FlutterDeckSlideWidget {
  const IntroductionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/introduction-slide',
            title: '自己紹介',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const IntroductionPage(),
      headerBuilder: (context) {
        return FlutterDeckHeader(
          title: AppLocalizations.of(context)!.introduction,
        );
      },
    );
  }
}
