import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            RichParagraph(
              [
                TextSpan(
                  text: AppLocalizations.of(context)!.aboutFlutterDeck11,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: AppLocalizations.of(context)!.aboutFlutterDeck12,
                ),
                TextSpan(
                  text: AppLocalizations.of(context)!.aboutFlutterDeck13,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.blue),
                ),
              ],
            ),
            const Gap(32),
            RichParagraph(
              [
                TextSpan(
                  text: AppLocalizations.of(context)!.aboutFlutterDeck21,
                ),
                TextSpan(
                  text: AppLocalizations.of(context)!.aboutFlutterDeck22,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const Gap(32),
            Paragraph(AppLocalizations.of(context)!.aboutFlutterDeck3),
            const Gap(32),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/coding_image.png'),
                    ),
                    const Gap(8),
                    Paragraph(AppLocalizations.of(context)!.buildingScreen),
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
