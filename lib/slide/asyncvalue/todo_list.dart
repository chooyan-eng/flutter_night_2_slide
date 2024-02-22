import 'package:flutter_night_2/slide/asyncvalue/asyncvalue_page.dart';
import 'package:flutter_night_2/slide/asyncvalue/filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list.g.dart';

@riverpod
Future<List<String>> todoList(TodoListRef ref) async {
  final isFiltered = ref.watch(isFilteredProvider);

  await Future.delayed(const Duration(seconds: 2));

  if (ref.read(forceErrorProvider)) {
    throw Exception('FetchTodoListError');
  }

  return [
    'Buy milk',
    'Buy eggs',
    'Buy bread',
    'Buy butter',
    'Go to the gym',
    'Go to the bank',
    'Learn Riverpod',
    'Learn Flutter',
    'Learn Dart',
    'Watch a movie',
    'Read a book',
    'Write an article',
    'Write a book',
    'Write a package',
    'Write a plugin',
    'Write a library',
    'Write a framework',
    'Write a tool',
    'Write a script',
    'Write a program',
  ]
      .where(
        (todo) => !isFiltered || todo.startsWith('Write'),
      )
      .toList();
}
