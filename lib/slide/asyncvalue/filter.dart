import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter.g.dart';

@riverpod
class IsFiltered extends _$IsFiltered {
  @override
  bool build() => false;

  void filtered() => state = true;
  void all() => state = false;
}
