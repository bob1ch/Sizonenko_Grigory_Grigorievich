// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "nav_menu": "Navigation menu",
  "name": "Name: ",
  "status": "Status: ",
  "quote": "Favourite quote: ",
  "gen": "Generate",
  "news_title": "What's new?",
  "vote": "Voted for liberty: ",
  "kills": "You have killed enemies of Democracy: ",
  "like": "like",
  "plus": "kill"
};
static const Map<String,dynamic> ru = {
  "nav_menu": "Меню навигации",
  "name": "Имя: ",
  "status": "Статус: ",
  "quote": "Избранная цитата: ",
  "gen": "Сгенерировать",
  "news_title": "Что нового?",
  "vote": "Голос за свободу: ",
  "kills": "Вы убили врагов демократии: ",
  "like": "Лайк",
  "plus": "Убить"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
