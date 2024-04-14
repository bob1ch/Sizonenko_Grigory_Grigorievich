import 'dart:math';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ex2/functions/myapp.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ru')],
          path: 'assets/languages',
          fallbackLocale: Locale('en'),
          child: MyApp()
      )
  );
}







