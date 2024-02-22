import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label('flutter_deck は'),
            const Gap(60),
            const RichParagraph(
              [
                TextSpan(
                  text: '「スライドの中でコードを動かしたい」',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(text: '用途に最適'),
              ],
            ),
            const Gap(32),
            const Paragraph('アプリを作る感覚でスライドが作れる'),
            const Gap(32),
            const Paragraph('資料作成も意外と時間がかからない。この資料で3, 4時間くらい。ぜひ。'),
            const Gap(60),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87, width: 2),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Image.asset('assets/images/flutter_deck.png'),
                      ),
                    ),
                    const Gap(8),
                    const Link('https://pub.dev/packages/flutter_deck'),
                    const Gap(32),
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
