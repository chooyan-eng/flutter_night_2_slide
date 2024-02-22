import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/asyncvalue/asyncvalue_page.dart';

class AsyncValueSlide extends FlutterDeckSlideWidget {
  const AsyncValueSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/asyncvalue-slide',
            title: '活用例その2: AsyncValueの挙動解説',
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (_) => const AsyncValuePage(),
      headerBuilder: (context) {
        return const FlutterDeckHeader(
          title: '活用例その2: AsyncValueの挙動解説',
        );
      },
    );
  }
}
