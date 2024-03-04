import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:flutter_night_2/component/mini_app.dart';
import 'package:flutter_night_2/slide/crop_your_image/crop_your_image_app.dart';
import 'package:flutter_night_2/slide/crop_your_image/cropped_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CropYourImagePage extends ConsumerWidget {
  const CropYourImagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Flexible(
          flex: 1,
          child: Center(child: MiniApp(child: CropYourImageApp())),
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Label(AppLocalizations.of(context)!.cropYourImageDemo),
                const Gap(20),
                Paragraph(
                  AppLocalizations.of(context)!.croppedImageDescription,
                ),
                const SizedBox(height: 60),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: ref.watch(croppedImageProvider) == null
                      ? const SizedBox()
                      : Image.memory(
                          ref.watch(croppedImageProvider)!,
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
