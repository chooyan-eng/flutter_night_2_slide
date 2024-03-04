import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/crop_your_image/crop_your_image_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CropYourImageSlide extends FlutterDeckSlideWidget {
  const CropYourImageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crop-slide',
            title: '活用例その3: crop_your_image の紹介',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const CropYourImagePage(),
      headerBuilder: (context) {
        return FlutterDeckHeader(
          title: AppLocalizations.of(context)!.case3Title,
        );
      },
    );
  }
}
