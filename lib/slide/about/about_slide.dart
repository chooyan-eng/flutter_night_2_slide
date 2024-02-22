import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AboutSlide extends FlutterDeckSlideWidget {
  const AboutSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/about-slide',
            title: '今日の発表内容',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'flutter_deck',
      subtitle: 'Flutter アプリで登壇資料を作る',
    );
  }
}
