import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Label('ちゅーやん（中條 剛）'),
            Gap(60),
            Paragraph(
              'フリーランスの Flutter アプリ開発者です。'
              '講師や技術顧問もやってます。',
            ),
            Gap(24),
            Paragraph(
              'Zenn や hashnode への記事の投稿やパッケージ開発などもやっています。',
            ),
            Gap(60),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Book(
                    imagePath: 'assets/images/riverpod_book.png',
                    url: 'https://zenn.dev/chooyan/books/92a0a489f68233',
                  ),
                  Gap(120),
                  _Book(
                    imagePath: 'assets/images/flutter_book.png',
                    url: 'https://zenn.dev/chooyan/books/934f823764db62',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Book extends StatelessWidget {
  const _Book({required this.imagePath, required this.url});

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        Link(url),
      ],
    );
  }
}
