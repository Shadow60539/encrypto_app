import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MoonAnimatedWidget extends AnimatedWidget {
  const MoonAnimatedWidget({
    Key? key,
    required this.top,
    required this.left,
    required Listenable listenable,
  }) : super(key: key, listenable: listenable);

  final double top;
  final double left;

  double get value => (listenable as Animation<double>).value;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 10),
      top: top * value,
      left: left * value,
      child: Lottie.asset(
        "assets/lottie/moon.json",
        fit: BoxFit.cover,
        height: 100,
        frameRate: FrameRate.max,
      ),
    );
  }
}
