import 'package:flutter/material.dart';

class AppVersionWidget extends StatelessWidget {
  const AppVersionWidget({
    Key? key,
    required this.appVersionNotifier,
  }) : super(key: key);

  final ValueNotifier<String> appVersionNotifier;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: ValueListenableBuilder<String>(
          valueListenable: appVersionNotifier,
          builder: (BuildContext context, String value, Widget? child) {
            return AnimatedSwitcher(
              duration: const Duration(seconds: 4),
              child: Text(
                value,
                key: ValueKey(value),
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white24,
                  letterSpacing: 2,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
