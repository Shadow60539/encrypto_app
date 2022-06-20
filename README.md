[![Dart](https://img.shields.io/badge/Dart-0175C2)](https://pub.dev/packages/fancy_text_reveal)
![Flutter](https://img.shields.io/badge/Flutter-02569B)
[![Test](https://github.com/Shadow60539/encrypto_app/actions/workflows/test.yml/badge.svg)](https://github.com/Shadow60539/encrypto_app/actions/workflows/test.yml)
![License](https://img.shields.io/github/license/Shadow60539/encrypto_app?color=08C6A8)



![lib](images/poster.png)

[![Playstore](images/google-play-badge.png)](https://play.google.com/store/apps/details?id=com.sanjeev.encrypto_app)

# 💎Encrypto: Easy File Encryption 


### Introduction 🚀

> Want to securely encrypt your private and confidential files?

> With Encrypto you easily and securely protect all your important files, in an interface that is fun and simple to use.


### Demo 👀


https://user-images.githubusercontent.com/59445273/174485877-42a3a771-2940-486d-aebf-4164f500f0d0.mp4

### Key Features 🔑

✔ Supports all file types (PDF, MP3, MP4, PNG, DOCX,...)<br>
✔ Add files from outside the app<br>
✔ Share the converted file from the app


### Algorithm 🔒

Everything is encrypted using the strong encryption algorithm: AES with PKCS7 padding


### Usage 🔎

To clone and run this application, you'll need [git](https://git-scm.com) and [flutter](https://flutter.dev/docs/get-started/install) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/Shadow60539/encrypto_app.git

# Go into the repository
$ cd encrypto_app

# Install dependencies
$ flutter packages get

# Run the app
$ flutter run
```


### Packages 📦


Package | Description
---|---
[file_cryptor](https://pub.dev/packages/file_cryptor) | FileCryptor is for encryption and decryption files.
[file_picker](https://pub.dev/packages/file_picker) | A package that allows you to use the native file explorer to pick single or multiple files, with extensions filtering support.
[mockito](https://pub.dev/packages/mockito) | A mock framework inspired by Mockito with APIs for Fakes, Mocks, behavior verification, and stubbing.
[open_file](https://pub.dev/packages/open_file) | A plug-in that can call native APP to open files with string result in flutter.
[path_provider](https://pub.dev/packages/path_provider) | A Flutter plugin for finding commonly used locations on the filesystem
[permission_handler](https://pub.dev/packages/permission_handler) | This plugin provides a cross-platform (iOS, Android) API to request permissions and check their status.
[lottie](https://pub.dev/packages/lottie) | Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile.
[share_plus](https://pub.dev/packages/share_plus) | A Flutter plugin to share content from your Flutter app via the platform's share dialog.
[flutter_archive](https://pub.dev/packages/flutter_archive) | Create and extract ZIP archive files.
[flutter_bloc](https://pub.dev/packages/flutter_bloc) | State management.
[freezed](https://pub.dev/packages/freezed) | Code generation for immutable classes that has a simple syntax/API without compromising on the features.
[dartz](https://pub.dev/packages/dartz) | Functional Programming in Dart.
[injectable](https://pub.dev/packages/injectable) | Injectable is a convenient code generator for get_it.
[fancy_text_reveal](https://pub.dev/packages/fancy_text_reveal) | 💁‍♂️ <b>My package</b>. Fancy way to reveal widgets.
[animated_text_kit](https://pub.dev/packages/animated_text_kit) | A flutter package project which contains a collection of cool and beautiful text animations.
[flutter_svg](https://pub.dev/packages/flutter_svg) | An SVG rendering and widget library for Flutter.
[package_info_plus](https://pub.dev/packages/package_info_plus) | Flutter plugin for querying information about the application package, such as CFBundleVersion on iOS or versionCode on Android.
[flutter_isolate](https://pub.dev/packages/flutter_isolate) | FlutterIsolate provides a way to launch dart isolate in flutter that work with flutter plugins.
[change_app_package_name](https://pub.dev/packages/change_app_package_name) | Change App Package Name with single command.
[firebase_core](https://pub.dev/packages/firebase_core) | Flutter plugin for Firebase Core, enabling connecting to multiple Firebase apps.
[cloud_firestore](https://pub.dev/packages/cloud_firestore) | Flutter plugin for Cloud Firestore, a cloud-hosted, noSQL database with live synchronization and offline support on Android and iOS.
[equatable](https://pub.dev/packages/equatable) | A Dart package that helps to implement value based equality without needing to explicitly override == and hashCode.
[countup](https://pub.dev/packages/countup) | An flutter plugin that will help you to build animated counter texts.
[flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility) | Flutter plugin for discovering the state of the soft-keyboard visibility on Android and iOS
[flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) | A package which simplifies the task of updating your Flutter app's launcher icon.
[flutter_native_splash](https://pub.dev/packages/flutter_native_splash) | Customize Flutter's default white native splash screen with background color and splash image.
[fake_cloud_firestore](https://pub.dev/packages/fake_cloud_firestore) | Fake implementation of Cloud Firestore
[in_app_update](https://pub.dev/packages/in_app_update) | Enables In App Updates on Android using the official Android APIs.
[restart_app](https://pub.dev/packages/restart_app) | A simple package that helps you to restart the whole android app with a single function call.
[flutter_lints](https://pub.dev/packages/flutter_lints) | This package contains a recommended set of lints for Flutter apps, packages, and plugins to encourage good coding practices.
[receive_sharing_intent](https://pub.dev/packages/receive_sharing_intent) | A flutter plugin that enables flutter apps to receive sharing photos, videos, text, urls or any other file types from another app.



### Directory Structure 🏢

The [lib](lib) directory structure is as follows:

```
├── application
|    ├── crypto
|    |    ├── crypto_bloc.dart
|    |    ├── crypto_event.dart
|    |    ├── crypto_state.dart
|    |── save
|    |    ├── save_bloc.dart
|    |    ├── save_event.dart
|    |    ├── save_state.dart
├── core
|    |── enums.dart
|    |── extension.dart
|    |── navigation_service.dart
|    |── usecase.dart
├── domain
|    |── entity
|    |    ├── file_count.dart
|    |── failure
|    |    ├── crypto_failure.dart
|    |    ├── save_failure.dart
|    |── repoitory
|    |    ├── i_crypto_repo.dart
|    |    ├── i_save_repo.dart
|    |── usecase
|    |    ├── decrypt_file.dart
|    |    ├── encrypt_file.dart
|    |    ├── get_file_count.dart
|    |    ├── increment_file_count.dart
|    |    ├── save_file.dart
|    |    ├── share_file.dart
├── infrastructure
|    |── core
|    |    ├── firebase_helper.dart    
|    |    ├── injection_module.dart    
|    |    ├── permission_handler.dart    
|    |── data
|    |    ├── crypto_data_source.dart
|    |    ├── save_data_source.dart
|    |── exception
|    |    ├── crypto_exception.dart
|    |    ├── save_exception.dart
|    |── model
|    |    ├── file_count_model.dart
|    |── repository
|    |    ├── crypto_repo.dart
|    |    ├── save_repo.dart
├── presentation
|    |── core
|    |    ├── palette.dart
|    |── pages
|    |    ├── home_page.dart
|    |    ├── result_page.dart
|    |    ├── splash_page.dart
|    |── widgets
|    |    ├── add_file_widget.dart
|    |    ├── app_version_widget.dart
|    |    ├── app_widget.dart
|    |    ├── count_animated_widget.dart
|    |    ├── key_widget.dart
|    |    ├── moon_animated_widget.dart
|    |    ├── permission_dialog.dart
|    |    ├── title_animated_widget.dart
|    |    ├── usecase_button.dart
├── injection.dart
├── main.dart

```

#### In App Purchase v3.0.5 

```dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_encrypto/application/ad/ad_bloc.dart';
import 'package:flutter_encrypto/core/navigation_service.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

const String kRemoveAds = "remove_ads";

class PurchaseProvider with ChangeNotifier {
  bool _isAvailable = false;
  final InAppPurchase _iap = InAppPurchase.instance;
  List<ProductDetails> _products = [];
  List<PurchaseDetails> _purchases = [];
  late StreamSubscription _subscription;
  InAppPurchase get iap => _iap;
  bool get isAvailable => _isAvailable;

  Future<void> initialize() async {
    _isAvailable = await _iap.isAvailable();
    _subscription = _iap.purchaseStream.listen(_listener);
    _getProducts();
    _getPastPurchases();
  }

  void _listener(List<PurchaseDetails> purchaseDetails) {
    if (purchaseDetails.isEmpty) {
      return;
    }

    _verifyPurchase(purchaseDetails[0]);
    _purchases.addAll(purchaseDetails);
    notifyListeners();
  }

  Future<void> _verifyPurchase(PurchaseDetails purchaseDetail) async {
    final bool isRemoveAdsPurchase = purchaseDetail.productID == kRemoveAds;

    if (!isRemoveAdsPurchase) {
      return;
    }

    final bool isPurchasePending = purchaseDetail.pendingCompletePurchase;

    if (isPurchasePending) {
      await _iap.completePurchase(purchaseDetail);
    }

    final bool isPurchaseSuccess =
        purchaseDetail.status == PurchaseStatus.purchased ||
            purchaseDetail.status == PurchaseStatus.restored;

    if (!isPurchaseSuccess) {
      return;
    }

    // Remove ads
    BlocProvider.of<AdBloc>(globalContext, listen: false)
        .add(AdEvent.removeAds());
  }

  void cancelSubscription() {
    _subscription.cancel();
  }

  Future<void> _getPastPurchases() async {
    await _iap.restorePurchases();
  }

  Future<void> _getProducts() async {
    final ProductDetailsResponse response =
        await _iap.queryProductDetails({kRemoveAds});

    _products = response.productDetails;
    notifyListeners();
  }

  Future<void> buyRemoveAds() async {
    final PurchaseParam _removeAdParam =
        PurchaseParam(productDetails: _products[0]);
    await _iap.buyNonConsumable(purchaseParam: _removeAdParam);
  }
}
```
#### In App Update v3.0.0

```dart
  Future<void> _checkForUpdate() async {
    final AppUpdateInfo info = await InAppUpdate.checkForUpdate();
    final bool isUpdateAvailable =
        info.updateAvailability == UpdateAvailability.updateAvailable;
    if (isUpdateAvailable) {
      final result = await InAppUpdate.performImmediateUpdate();
      if (result == AppUpdateResult.userDeniedUpdate ||
          result == AppUpdateResult.inAppUpdateFailed) {
        // close the app
        SystemNavigator.pop();
      }

      if (result == AppUpdateResult.success) {
        Restart.restartApp();
      }
    }
  }

```

#### Google Mobile Ads v1.2.0

Inside main.dart
```dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Include
  MobileAds.instance.initialize();
  // runApp(const MyApp());
}
```
Declare ```bannerAd```, ```isBannerAdLoaded```, ```interstitialAd``` in the state
```dart
  late BannerAd bannerAd;
  bool isBannerAdLoaded = false;
  InterstitialAd? interstitialAd;
```
```dart
  @override
  void initState() {
    _createInterstitialAd();
    _createBannerAd();
    super.initState();
  }

  @override
  void dispose() {
    bannerAd.dispose();
    interstitialAd?.dispose();
    super.dispose();
  }
```
Interstitial Ad setup

```dart
  Future<void> _createInterstitialAd({int counter=0}) async {
    if (counter > 3) return;
    await InterstitialAd.load(
      adUnitId: "ca-app-pub-3940256099942544/8691691433",
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {});
        },
        onAdFailedToLoad: (ad) {
          interstitialAd = null;
          _createInterstitialAd( counter: counter + 1);
          setState(() {});
        },
      ),
    );
  }

    Future<void> _showInterstitialAd() async {
    if (interstitialAd == null) return;
    interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (ad, _) {
        ad.dispose();
        _createInterstitialAd();
      },
    );
    await interstitialAd!.show();
  }
```

Banner Ad setup

```dart
Future<void> _createBannerAd() async {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            isBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, _) {
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    );

    await bannerAd.load();
  }
```