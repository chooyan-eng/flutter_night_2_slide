import 'package:flutter/material.dart';
import 'package:flutter_night_2/slide/asyncvalue/filter.dart';
import 'package:flutter_night_2/slide/asyncvalue/todo_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListApp extends ConsumerWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListProvider);
    final isFiltered = ref.watch(isFilteredProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AsyncValue Sample'),
      ),
      body: todoList.when(
        data: (data) {
          return RefreshIndicator(
            onRefresh: () {
              return ref.refresh(todoListProvider.future);
            },
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final todo = data[index];
                return ListTile(
                  leading: const Icon(Icons.edit),
                  title: Text(todo),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('Error: $error'),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isFiltered) {
            ref.read(isFilteredProvider.notifier).all();
          } else {
            ref.read(isFilteredProvider.notifier).filtered();
          }
        },
        tooltip: 'Filter',
        heroTag: 'filter',
        child: Icon(isFiltered ? Icons.list : Icons.filter_list),
      ),
    );
  }
}
