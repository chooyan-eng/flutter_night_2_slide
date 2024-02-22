import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/components.dart';
import 'package:flutter_night_2/component/mini_app.dart';
import 'package:flutter_night_2/slide/asyncvalue/todo_list.dart';
import 'package:flutter_night_2/slide/asyncvalue/todo_list_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AsyncValuePage extends StatelessWidget {
  const AsyncValuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 3,
            child: _AsyncValueState(),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: MiniApp(
                child: TodoListApp(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final forceErrorProvider = StateProvider<bool>((ref) => false);

class _AsyncValueState extends ConsumerWidget {
  const _AsyncValueState();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);
    final forceError = ref.watch(forceErrorProvider);

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Gap(60),
          const Label('AsyncValueの状態'),
          const Gap(120),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _VisualizedAsyncValue(
                  color: Colors.blue,
                  className: 'AsyncLoading',
                  enabled: state is AsyncLoading,
                  value: state,
                ),
              ),
              const Gap(32),
              Expanded(
                child: _VisualizedAsyncValue(
                  color: Colors.red,
                  className: 'AsyncError',
                  enabled: state is AsyncError,
                  value: state,
                ),
              ),
              const Gap(32),
              Expanded(
                child: _VisualizedAsyncValue(
                  color: Colors.green,
                  className: 'AsyncData',
                  enabled: state is AsyncData,
                  value: state,
                ),
              ),
            ],
          ),
          const Gap(120),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Paragraph('強制エラー'),
              const Gap(16),
              Switch(
                value: forceError,
                onChanged: (value) {
                  ref.read(forceErrorProvider.notifier).state = value;
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _VisualizedAsyncValue extends StatelessWidget {
  const _VisualizedAsyncValue({
    required this.color,
    required this.className,
    required this.enabled,
    required this.value,
  });

  final MaterialColor color;
  final String className;
  final bool enabled;
  final AsyncValue value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: enabled ? color : color.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                className,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            )),
        if (enabled) ...[
          const Gap(16),
          Opacity(
            opacity: value.isRefreshing ? 1 : 0.2,
            child: const Paragraph('isRefreshing'),
          ),
          const Gap(16),
          Opacity(
            opacity: value.isReloading ? 1 : 0.2,
            child: const Paragraph('isReloading'),
          ),
        ],
      ],
    );
  }
}
