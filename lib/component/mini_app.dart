import 'package:flutter/material.dart';

class MiniApp extends StatelessWidget {
  const MiniApp({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4 - 24,
          height: MediaQuery.sizeOf(context).height / 4 * 3 - 32,
          child: LayoutBuilder(builder: (c, constraint) {
            return MediaQuery(
              data: MediaQuery.of(c).copyWith(
                size: Size(
                  constraint.maxWidth,
                  constraint.maxHeight,
                ),
              ),
              child: MaterialApp(
                home: child,
                theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    elevation: 0,
                  ),
                ),
              ),
            );
          }),
        ),
        IgnorePointer(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.sizeOf(context).width / 4,
              height: MediaQuery.sizeOf(context).height / 4 * 3,
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.black,
                    width: 12,
                  ),
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
