import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cropped_image.g.dart';

@riverpod
class CroppedImage extends _$CroppedImage {
  @override
  Uint8List? build() => null;

  void update(Uint8List cropped) => state = cropped;
}
