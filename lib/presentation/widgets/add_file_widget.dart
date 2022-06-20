import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/core/enums.dart';
import 'package:flutter_encrypto/presentation/core/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AddFileWidget extends StatelessWidget {
  const AddFileWidget({
    Key? key,
    required this.applyController,
    required this.pickFileController,
    required this.methodNotifier,
  }) : super(key: key);

  final AnimationController applyController;
  final AnimationController pickFileController;
  final ValueNotifier<CryptionMethod> methodNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            BlocProvider.of<CryptoBloc>(context).add(
              const CryptoEvent.pickFile(),
            );
          },
          child: BlocBuilder<CryptoBloc, CryptoState>(
            builder: (context, state) {
              final String? fileName = state.selectedFile?.name;
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                      animation: applyController,
                      builder: (context, _) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.all(
                              applyController.status == AnimationStatus.forward
                                  ? 0
                                  : 10),
                          decoration: BoxDecoration(
                            color:
                                fileName == null ? Colors.white : Palette.green,
                            shape: BoxShape.circle,
                          ),
                          child:
                              applyController.status == AnimationStatus.forward
                                  ? Lottie.asset(
                                      "assets/lottie/loading.json",
                                      frameRate: FrameRate.max,
                                    )
                                  : Icon(
                                      fileName == null
                                          ? Icons.add
                                          : Icons.check_rounded,
                                      size: 14,
                                      color: fileName == null
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                        );
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  fileName == null
                      ? Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: const Text(
                                "add file",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                letterSpacing: 2,
                              ),
                              child: SizedBox(
                                width: 50,
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    RotateAnimatedText("(.txt)"),
                                    RotateAnimatedText("(.docx)"),
                                    RotateAnimatedText("(.pdf)"),
                                    RotateAnimatedText("(.mp4)"),
                                    RotateAnimatedText("(.jpg)"),
                                    RotateAnimatedText("(.mp3)"),
                                    RotateAnimatedText("(.doc)"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Text(
                            fileName,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                ],
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: applyController,
          builder: (context, child) {
            return Visibility(
              visible: applyController.status == AnimationStatus.forward,
              child: child!,
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ValueListenableBuilder<CryptionMethod>(
              valueListenable: methodNotifier,
              builder: (BuildContext context, CryptionMethod selectedMethod,
                  Widget? child) {
                return Text(
                  selectedMethod == CryptionMethod.encrypt
                      ? "encrypting..."
                      : "decrypting...",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    letterSpacing: 2,
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 60,
          child: AnimatedBuilder(
            animation: pickFileController,
            builder: (context, child) {
              return Opacity(
                opacity: pickFileController.value,
                child: child,
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/icons/turn-right-arrow.svg",
                  color: Colors.white54,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "no file added",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
