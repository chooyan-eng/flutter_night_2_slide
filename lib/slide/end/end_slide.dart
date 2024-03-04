import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EndSlide extends FlutterDeckSlideWidget {
  const EndSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/end-slide',
            title: '終了',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: (context) {
        return Center(
          child: Label(AppLocalizations.of(context)!.thanks),
        );
      },
    );
  }
}
