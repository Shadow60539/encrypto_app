import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KeyWidget extends StatelessWidget {
  const KeyWidget({
    Key? key,
    required this.controller,
    required this.keyErrorController,
    required this.blackScreenController,
    required this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final AnimationController keyErrorController;
  final AnimationController blackScreenController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: blackScreenController,
        builder: (context, _) {
          return Opacity(
            opacity: Tween(begin: 1.0, end: 0.0)
                .animate(blackScreenController)
                .value,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 30,
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onChanged: (_) {},
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    cursorColor: Colors.white,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      hintText: "key",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      suffixIcon: const Icon(
                        Icons.key_rounded,
                        size: 14,
                        color: Colors.white12,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      filled: controller.text.trim().isNotEmpty,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide:
                            const BorderSide(color: Colors.white30, width: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: AnimatedBuilder(
                    animation: keyErrorController,
                    builder: (context, child) {
                      return Opacity(
                        opacity: keyErrorController.value,
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
                            "provide a key for the file",
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
            ),
          );
        });
  }
}
