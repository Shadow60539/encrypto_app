import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/application/save/save_bloc.dart';
import 'package:flutter_encrypto/core/enums.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:flutter_encrypto/domain/failure/save_failure.dart';
import 'package:flutter_encrypto/presentation/core/palette.dart';
import 'package:flutter_encrypto/presentation/pages/home_page.dart';
import 'package:flutter_encrypto/presentation/widgets/permission_dialog.dart';
import 'package:lottie/lottie.dart';
import 'package:open_file/open_file.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> with TickerProviderStateMixin {
  final cryptoBloc = BlocProvider.of<CryptoBloc>(globalContext);
  final saveBloc = BlocProvider.of<SaveBloc>(globalContext);

  late AnimationController successController;
  late AnimationController successRearrangeController;

  @override
  void initState() {
    super.initState();

    successController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward()
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              successRearrangeController.forward();
            }
          });

    successRearrangeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    successController.dispose();
    successRearrangeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String fileName = cryptoBloc.state.selectedFile!.name;
    final CryptionMethod _method = cryptoBloc.state.cryptionMethod;

    final String _methodString =
        _method == CryptionMethod.encrypt ? "encrypted" : "decrypted";

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: BlocConsumer<SaveBloc, SaveState>(
              listener: (context, state) {
                state.savefailureOrSuccessOption.fold(
                  () => null,
                  (some) => some.fold(
                    _showPermissionDialog,
                    (r) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white10,
                          behavior: SnackBarBehavior.floating,
                          content: Row(
                            children: [
                              Lottie.asset(
                                "assets/lottie/file.json",
                                height: 50,
                                width: 50,
                                repeat: false,
                                frameRate: FrameRate.max,
                              ),
                              Flexible(
                                child: Text(
                                  "file saved at $r",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: "Quicksand",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          action: SnackBarAction(
                            label: "open",
                            textColor: Palette.green,
                            onPressed: () async {
                              await OpenFile.open(r);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              builder: (context, state) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Lottie.asset(
                      "assets/lottie/background.json",
                      fit: BoxFit.cover,
                      // alignment: Alignment.bottomCenter,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      frameRate: FrameRate.max,
                    ),
                    AnimatedBuilder(
                        animation: Listenable.merge(
                            [successController, successRearrangeController]),
                        builder: (context, _) {
                          return AlignTransition(
                            alignment: Tween(
                                    begin: Alignment.center,
                                    end: Alignment.topCenter)
                                .animate(successRearrangeController),
                            child: Lottie.asset(
                              "assets/lottie/success.json",
                              controller: successController,
                              // fit: BoxFit.cover,
                              // alignment: Alignment.bottomCenter,
                              height: 100,
                              width: 100,
                              frameRate: FrameRate.max,
                              repeat: false,
                            ),
                          );
                        }),
                    AnimatedBuilder(
                      animation: successRearrangeController,
                      builder: (context, child) {
                        return Opacity(
                          opacity: Tween(begin: 0.0, end: 1.0)
                              .animate(successRearrangeController)
                              .value,
                          child: child,
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 120,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
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
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '($_methodString)',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Column(
                            children: [
                              CupertinoButton(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.white10,
                                child: const Text(
                                  "save",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: "Quicksand",
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: _onSavePressed,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CupertinoButton(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.white10,
                                child: const Text(
                                  "share",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: "Quicksand",
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: _onSharePressed,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
      )),
    );
  }

  Future<bool> _onBackPressed() async {
    cryptoBloc.add(const CryptoEvent.reset());
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const HomePage()));

    return true;
  }

  Future<void> _onSharePressed() async {
    saveBloc.add(const SaveEvent.share());
  }

  Future<void> _onSavePressed() async {
    String fileName = cryptoBloc.state.selectedFile!.name.split(".").first;
    final bool isEncryption =
        cryptoBloc.state.cryptionMethod == CryptionMethod.encrypt;

    final String initialText = (isEncryption ? "en" : "de") + "_" + fileName;
    final TextEditingController controller =
        TextEditingController(text: initialText);
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      isScrollControlled: true,
      builder: (_) => StatefulBuilder(
        builder: (BuildContext context, setState) {
          return Container(
            margin: const EdgeInsets.all(20),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "file name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    controller.text.trim().isEmpty
                        ? const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.check_circle_rounded,
                              size: 18,
                              color: Colors.transparent,
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              final String _fileName = controller.text.trim() +
                                  "." +
                                  cryptoBloc.state.selectedFile!.extension!;
                              saveBloc.add(SaveEvent.save(_fileName));
                            },
                            icon: const Icon(
                              Icons.check_circle_rounded,
                              size: 18,
                              color: Palette.green,
                            ),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "enter file name to save the ${cryptoBloc.state.cryptionMethod == CryptionMethod.encrypt ? "encrypted" : "decrypted"}  file",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller,
                  onChanged: (_) {
                    setState(() {});
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    filled: controller.text.trim().isNotEmpty,
                    fillColor: Palette.green,
                    suffixText: "." + cryptoBloc.state.selectedFile!.extension!,
                    suffixStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
    // saveBloc.add(const SaveEvent.save());
  }

  void _showPermissionDialog(SaveFailure failure) {
    if (failure == const SaveFailure.userCancelled()) return;

    showDialog(
      context: context,
      builder: (_) {
        return const PermissionDialog();
      },
    );
  }
}
