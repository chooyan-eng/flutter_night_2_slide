import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/component/components.dart';

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
        return const Center(
          child: Label('ご清聴ありがとうございました'),
        );
      },
    );
  }
}
