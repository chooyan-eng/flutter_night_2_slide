import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Label(AppLocalizations.of(context)!.name),
            const Gap(60),
            Paragraph(AppLocalizations.of(context)!.myJob),
            const Gap(24),
            Paragraph(AppLocalizations.of(context)!.ossActivities),
            const Gap(60),
            const Expanded(
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
