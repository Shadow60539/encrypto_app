
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsecaseButton extends StatelessWidget {
  const UsecaseButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(2),
      color: Colors.white10,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontFamily: "Quicksand",
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
