import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PermissionDialog extends StatelessWidget {
  const PermissionDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: SimpleDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.white12,
            )),
        backgroundColor: Colors.black,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        title: Row(
          children: [
            Lottie.asset(
              "assets/lottie/file.json",
              height: 40,
              width: 40,
              frameRate: FrameRate.max,
            ),
            const Text("storage permission"),
          ],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontFamily: "Quicksand",
          fontWeight: FontWeight.bold,
        ),
        children: [
          const Text(
            "encrypto needs storage permission to save files.\n\nthe app may not work correctly without the storage permissions",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: "Quicksand",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              Colors.white10,
            )),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "try again",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: "Quicksand",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
