import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/application/save/save_bloc.dart';
import 'package:flutter_encrypto/core/enums.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:flutter_encrypto/presentation/pages/result_page.dart';
import 'package:flutter_encrypto/presentation/widgets/add_file_widget.dart';
import 'package:flutter_encrypto/presentation/widgets/app_version_widget.dart';
import 'package:flutter_encrypto/presentation/widgets/count_animated_widget.dart';
import 'package:flutter_encrypto/presentation/widgets/key_widget.dart';
import 'package:flutter_encrypto/presentation/widgets/title_animated_widget.dart';
import 'package:flutter_encrypto/presentation/widgets/usecase_button.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:lottie/lottie.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final cryptoBloc = BlocProvider.of<CryptoBloc>(globalContext);
  final saveBloc = BlocProvider.of<SaveBloc>(globalContext);

  late AnimationController applyController;
  late AnimationController blackScreenController;
  late AnimationController slideUpController;
  late AnimationController pickFileController;
  late AnimationController keyErrorController;

  final ValueNotifier<String> appVersionNotifier = ValueNotifier("");

  final ValueNotifier<CryptionMethod> methodNotifier =
      ValueNotifier(CryptionMethod.encrypt);
  final ValueNotifier<bool> fileCountNotifier = ValueNotifier(true);
  final ValueNotifier<bool> focusNotifier = ValueNotifier(true);
  late TextEditingController _keyController;
  final FocusNode _focusNode = FocusNode();
  late StreamSubscription<bool> keyboardSubscription;

  bool isBannerAdLoaded = false;
  StreamSubscription<List<SharedMediaFile>>? _intentDataStreamSubscription;

  @override
  void initState() {
    super.initState();

    // For sharing media coming from outside the app while the app is in the memory
    if (!cryptoBloc.state.isFromShare) {
      _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
          .listen((List<SharedMediaFile> value) {
        final String path = value[0].path;
        cryptoBloc.add(CryptoEvent.updateSelectedFile(path));
      });

      // For sharing media coming from outside the app while the app is closed
      ReceiveSharingIntent.getInitialMedia()
          .then((List<SharedMediaFile> value) {
        final String path = value[0].path;
        cryptoBloc.add(CryptoEvent.updateSelectedFile(path));
      });
    }

    _initializePackageInfo();
    applyController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    blackScreenController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    slideUpController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    pickFileController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    keyErrorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _keyController = TextEditingController()
      ..addListener(() {
        if (_keyController.text.trim().isNotEmpty) {
          keyErrorController.reverse();
        }
      });

    _focusNode.addListener(() {
      focusNotifier.value = !_focusNode.hasFocus;
    });

    keyboardSubscription =
        KeyboardVisibilityController().onChange.listen((bool visible) {
      focusNotifier.value = !visible;
    });
  }

  Future<void> _initializePackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appVersionNotifier.value = "v" + packageInfo.buildNumber;
  }

  @override
  void dispose() {
    applyController.dispose();
    blackScreenController.dispose();
    slideUpController.dispose();
    pickFileController.dispose();
    keyErrorController.dispose();
    appVersionNotifier.dispose();
    _keyController.dispose();
    _intentDataStreamSubscription?.cancel();
    _focusNode.dispose();
    focusNotifier.dispose();
    keyboardSubscription.cancel();
    methodNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: BlocListener<CryptoBloc, CryptoState>(
            listener: (context, state) {
              // pick file listener
              state.pickFileOption.fold(
                () => null,
                (file) => pickFileController.reverse(),
              );

              // usecase listener
              _usecaseListener(state);

              // storage permission listener
              _storageListener(state.storagePermissionStatus);
            },
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Lottie.asset(
                  "assets/lottie/background.json",
                  fit: BoxFit.cover,
                  frameRate: FrameRate.max,
                ),
                AppVersionWidget(
                  appVersionNotifier: appVersionNotifier,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: focusNotifier,
                  builder: (context, isVisible, child) {
                    return Visibility(
                      visible: isVisible,
                      maintainState: true,
                      child: child!,
                    );
                  },
                  child: CountAnimatedWidget(
                    listenable: slideUpController,
                    isBotton: true,
                  ),
                ),
                CountAnimatedWidget(
                  listenable: slideUpController,
                  isBotton: false,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ValueListenableBuilder<bool>(
                      valueListenable: focusNotifier,
                      builder: (context, isVisible, child) {
                        return Visibility(
                            visible: isVisible,
                            maintainState: true,
                            child: child!);
                      },
                      child: TitleAnimatedWidget(
                        blackScreenController: blackScreenController,
                      ),
                    ),
                    Column(
                      children: [
                        ValueListenableBuilder<bool>(
                          valueListenable: focusNotifier,
                          builder: (context, isVisible, child) {
                            return Visibility(
                                visible: isVisible,
                                maintainState: true,
                                child: child!);
                          },
                          child: AddFileWidget(
                            applyController: applyController,
                            pickFileController: pickFileController,
                            methodNotifier: methodNotifier,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: _keyController,
                          builder: (context, _, __) {
                            return KeyWidget(
                              controller: _keyController,
                              focusNode: _focusNode,
                              keyErrorController: keyErrorController,
                              blackScreenController: blackScreenController,
                            );
                          },
                        ),
                      ],
                    ),
                    AnimatedBuilder(
                      animation: blackScreenController,
                      builder: (context, child) {
                        return Opacity(
                          opacity: Tween(begin: 1.0, end: 0.0)
                              .animate(blackScreenController)
                              .value,
                          child: child,
                        );
                      },
                      child: Column(
                        children: [
                          UsecaseButton(
                              text: "encrypt", onPressed: _onEncryptPressed),
                          const SizedBox(
                            height: 10,
                          ),
                          UsecaseButton(
                              text: "decrypt", onPressed: _onDecryptPressed),
                        ],
                      ),
                    ),
                  ],
                ),
                AnimatedBuilder(
                    animation: applyController,
                    builder: (context, child) {
                      return Visibility(
                        visible: applyController.isAnimating,
                        child: Lottie.asset(
                          "assets/lottie/rocket.json",
                          controller: applyController,
                          alignment: Alignment.bottomCenter,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          frameRate: FrameRate.max,
                        ),
                      );
                    }),
              ],
            ),
          )),
    );
  }

  Future<void> _usecaseListener(CryptoState state) async {
    state.failureOrSuccessOption.fold(
      () => null,
      (some) => some.fold(
        (l) {
          applyController.reverse();
          blackScreenController.reverse();
          slideUpController.reverse();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black,
              behavior: SnackBarBehavior.floating,
              content: Row(
                children: [
                  const Icon(
                    Icons.cancel,
                    size: 14,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    l.map(
                      clientFailure: (_) =>
                          "error: unknown error occured. please try again after some time",
                      encryptionFailure: (_) =>
                          "error: select a non-encrypted file",
                      decryptionFailure: (_) =>
                          "error: select already encrypted file",
                      invalidKeyFailure: (_) => "error: invalid key",
                    ),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Quicksand",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        (r) async {
          await applyController.forward();
          return Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const ResultPage()));
        },
      ),
    );
  }

  void _storageListener(PermissionStatus? status) {
    if (status == null || status.isGranted) return;

    if (status.isDenied) {
      _showPermissionDialog(
        "encrypto needs storage permission to access files",
        buttonLabel: "grant",
        onPressed: () {
          cryptoBloc.add(const CryptoEvent.pickFile());
        },
      );
    } else if (status.isPermanentlyDenied) {
      _showPermissionDialog(
          "encrypto may not work correctly without the storage permissions.\n\nopen the app settings to modify app permissions",
          onPressed: () async {
        await openAppSettings();
      }, buttonLabel: "open settings");
    }
  }

  void _showPermissionDialog(
    String message, {
    required String buttonLabel,
    required void Function() onPressed,
  }) {
    showDialog(
      context: context,
      builder: (_) {
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
              Text(
                message,
                style: const TextStyle(
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
                  onPressed();
                },
                child: Text(
                  buttonLabel,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onEncryptPressed() async {
    if (!_validate()) return;

    methodNotifier.value = CryptionMethod.encrypt;
    await _startAnimation();
    cryptoBloc.add(CryptoEvent.encrypt(_keyController.text.trim()));
  }

  Future<void> _onDecryptPressed() async {
    if (!_validate()) return;

    methodNotifier.value = CryptionMethod.decrypt;
    await _startAnimation();
    cryptoBloc.add(CryptoEvent.decrypty(_keyController.text.trim()));
  }

  bool _validate() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (cryptoBloc.state.selectedFile == null) {
      pickFileController.forward();
      return false;
    }
    if (_keyController.text.trim().isEmpty) {
      keyErrorController.forward();
      return false;
    }

    return true;
  }

  Future<void> _startAnimation() async {
    slideUpController.forward();
    applyController.forward();
    blackScreenController.forward();
    await Future.delayed(const Duration(milliseconds: 680));
    applyController.stop(canceled: false);
  }
}
