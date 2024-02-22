import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';

class AboutDeckPage extends StatelessWidget {
  const AboutDeckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RichParagraph(
              [
                TextSpan(
                  text: '「スライドみたいに動く Flutter アプリ」',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.blue),
                ),
                TextSpan(text: 'を作ってくれるパッケージ。'),
              ],
            ),
            const Gap(32),
            const RichParagraph(
              [
                TextSpan(text: 'Flutter アプリなので、'),
                TextSpan(
                  text: 'Flutter でできることはなんでもできる！',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const Gap(32),
            const Paragraph('この資料も flutter_deck で作っています 😊'),
            const Gap(32),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/coding_image.png'),
                    ),
                    const Gap(8),
                    const Paragraph('このページの作成画面'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
