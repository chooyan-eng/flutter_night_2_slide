import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/about_deck/about_deck_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutDeckSlide extends FlutterDeckSlideWidget {
  const AboutDeckSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/about-deck-slide',
            title: 'flutter_deck とは',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const AboutDeckPage(),
      headerBuilder: (context) {
        return FlutterDeckHeader(
          title: AppLocalizations.of(context)!.aboutFlutterDeck,
        );
      },
    );
  }
}
