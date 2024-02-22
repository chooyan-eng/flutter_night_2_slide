import 'package:flutter/material.dart';
import 'package:flutter_night_2/component/mini_app.dart';
import 'package:flutter_night_2/slide/couter_app/counter_app.dart';

class CounterAppPage extends StatelessWidget {
  const CounterAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MiniApp(
          child: CounterApp(),
        ),
      ),
    );
  }
}
