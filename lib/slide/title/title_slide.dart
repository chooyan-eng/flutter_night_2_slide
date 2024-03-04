import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const _title = 'Flutterで作る「動的」な登壇資料';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide',
            title: _title,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: AppLocalizations.of(context)!.slideTitle,
      subtitle: AppLocalizations.of(context)!.slideSubTitle,
    );
  }
}
