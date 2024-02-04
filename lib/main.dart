import 'package:library_app/myapp.dart';
import 'package:library_app/utils/global.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Use This Command To Generate Transitions
// dart run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

void main() async {

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  setup();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);


  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      path: 'assets/translations',
      startLocale: const Locale('ar', ''),
      fallbackLocale: const Locale('ar', ''),
      child: const MyApp(),
    )
  );
}