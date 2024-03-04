import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/couter_app/couter_app_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CounterAppSlide extends FlutterDeckSlideWidget {
  const CounterAppSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/counter-app-slide',
            title: '活用例その1: カウンターアプリ',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const CounterAppPage(),
      headerBuilder: (context) {
        return FlutterDeckHeader(
          title: AppLocalizations.of(context)!.case1Title,
        );
      },
    );
  }
}
