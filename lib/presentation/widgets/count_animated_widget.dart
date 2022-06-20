import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/domain/entity/file_count.dart';
import 'package:flutter_encrypto/presentation/core/palette.dart';
import 'package:lottie/lottie.dart';

class CountAnimatedWidget extends AnimatedWidget {
  const CountAnimatedWidget({
    Key? key,
    required Listenable listenable,
    required this.isBotton,
  }) : super(key: key, listenable: listenable);

  final bool isBotton;

  double get value => (listenable as Animation<double>).value;

  @override
  Widget build(BuildContext context) {
    if (isBotton) {
      return Opacity(
        opacity: 1 - value,
        child: const Align(
          alignment: Alignment.bottomCenter,
          child: _CountChild(),
        ),
      );
    } else {
      return Opacity(
        opacity: value,
        child: SlideTransition(
          position: Tween(begin: const Offset(0, -0.05), end: Offset.zero)
              .animate(CurvedAnimation(
            parent: (listenable as Animation<double>),
            curve: Curves.easeOutExpo,
          )),
          child: const Align(
            alignment: Alignment.topCenter,
            child: _CountChild(),
          ),
        ),
      );
    }
  }
}

class _CountChild extends StatelessWidget {
  const _CountChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CryptoBloc, CryptoState>(
      builder: (context, state) {
        final FileCount? fileCount = state.fileCount;

        if (fileCount == null) {
          return const Text("");
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/lottie/diamond.json",
                height: 20,
                width: 20,
                frameRate: FrameRate.max,
              ),
              Countup(
                begin: 0,
                end: fileCount.value.toDouble(),
                separator: ",",
                suffix: " files ",
                duration: const Duration(milliseconds: 800),
                style: const TextStyle(
                  color: Palette.green,
                  fontSize: 10,
                ),
              ),
              const Text(
                "with a total size of ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              Text(
                fileCount.size,
                style: const TextStyle(
                  color: Palette.green,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
