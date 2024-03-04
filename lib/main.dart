import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_night_2/slide/about/about_slide.dart';
import 'package:flutter_night_2/slide/about_deck/about_deck_slide.dart';
import 'package:flutter_night_2/slide/asyncvalue/asyncvalue_slide.dart';
import 'package:flutter_night_2/slide/conclusion/conclusion_slide.dart';
import 'package:flutter_night_2/slide/couter_app/couter_app_slide.dart';
import 'package:flutter_night_2/slide/crop_your_image/crop_your_image_slide.dart';
import 'package:flutter_night_2/slide/end/end_slide.dart';
import 'package:flutter_night_2/slide/introduction/introduction_slide.dart';
import 'package:flutter_night_2/slide/title/title_slide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Builder(
        builder: (c) => FlutterDeckApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          configuration: const FlutterDeckConfiguration(
            controls: FlutterDeckControlsConfiguration(
              shortcuts: FlutterDeckShortcutsConfiguration(
                nextSlide: SingleActivator(LogicalKeyboardKey.enter),
                previousSlide: SingleActivator(LogicalKeyboardKey.backspace),
              ),
            ),
          ),
          lightTheme: FlutterDeckThemeData(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              textTheme: const TextTheme(
                headlineLarge: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                bodyLarge: TextStyle(fontSize: 28),
                bodySmall: TextStyle(fontSize: 18),
              ),
            ),
          ),
          slides: const [
            TitleSlide(),
            IntroductionSlide(),
            AboutSlide(),
            AboutDeckSlide(),
            CounterAppSlide(),
            AsyncValueSlide(),
            CropYourImageSlide(),
            ConclusionSlide(),
            EndSlide(),
          ],
          speakerInfo: FlutterDeckSpeakerInfo(
            name: AppLocalizations.of(c)!.name,
            description: AppLocalizations.of(c)!.occupation,
            imagePath: 'assets/images/${AppLocalizations.of(c)!.imageFile}',
            socialHandle: AppLocalizations.of(c)!.social,
          ),
        ),
      ),
    );
  }
}
