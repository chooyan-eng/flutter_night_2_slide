import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            Label(AppLocalizations.of(context)!.conclusion11),
            const Gap(60),
            RichParagraph(
              [
                TextSpan(
                  text: AppLocalizations.of(context)!.conclusion12,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: AppLocalizations.of(context)!.conclusion13,
                ),
              ],
            ),
            const Gap(32),
            Paragraph(AppLocalizations.of(context)!.conclusion2),
            const Gap(32),
            Paragraph(AppLocalizations.of(context)!.conclusion3),
            const Gap(32),
            Paragraph(AppLocalizations.of(context)!.conclusion4),
            const Gap(60),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
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
