import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';

class TitleAnimatedWidget extends StatelessWidget {
  const TitleAnimatedWidget({Key? key, required this.blackScreenController})
      : super(key: key);

  final AnimationController blackScreenController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: blackScreenController,
      builder: (context, child) {
        return Opacity(
          opacity:
              Tween(begin: 1.0, end: 0.0).animate(blackScreenController).value,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: const BoxDecoration(
              color: Colors.white10,
            ),
            child: const FancyTextReveal(
              properties: Properties(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                milliseconds: 400,
              ),
              child: Text(
                "encrypto",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: const BoxDecoration(
          color: Colors.white10,
        ),
        child: const FancyTextReveal(
          properties: Properties(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            milliseconds: 400,
          ),
          child: Text(
            "encrypto",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                letterSpacing: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
