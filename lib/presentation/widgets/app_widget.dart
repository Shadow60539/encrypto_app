import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/crypto/crypto_bloc.dart';
import 'package:flutter_encrypto/application/save/save_bloc.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:flutter_encrypto/injection.dart';
import 'package:flutter_encrypto/presentation/pages/splash_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
    ));
    return MultiProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                getIt<CryptoBloc>()..add(const CryptoEvent.watchFileCount()),
          ),
          BlocProvider(
            create: (_) => getIt<SaveBloc>(),
          ),
        ],
        child: MaterialApp(
          navigatorKey: NavigationService.navigatorKey,
          theme: ThemeData(fontFamily: "Quicksand").copyWith(
            splashFactory: InkRipple.splashFactory,
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: ZoomPageTransitionsBuilder(),
              },
            ),
          ),
          title: 'Encrypto',
          debugShowCheckedModeBanner: false,
          // home: const HomePage(),
          home: const SplashPage(),
        ));
  }
}
