import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    _navigateToHomePage();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _navigateToHomePage() async {
    await Future.delayed(const Duration(milliseconds: 4600));
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 400),
          pageBuilder: (_, parent, __) {
            return SlideTransition(
              position: Tween(begin: const Offset(1, 0), end: Offset.zero)
                  .animate(CurvedAnimation(
                parent: parent,
                curve: Curves.ease,
              )),
              child: const HomePage(),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lottie/splash.json",
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              frameRate: FrameRate.max,
              repeat: false,
            ),
            AnimatedBuilder(
                animation: controller,
                builder: (context, _) {
                  return Text(
                    "encrypto",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(controller.value),
                      letterSpacing: 10 *
                          CurvedAnimation(
                            parent: controller,
                            curve: Curves.fastOutSlowIn,
                          ).value,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
