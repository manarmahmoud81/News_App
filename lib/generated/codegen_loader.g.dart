// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "Authentication": {
    "settings": "الإعدادات",
    "english": "الإنجليزية",
    "arabic": "العربية",
    "explore": "استكشف",
    "travel": "سفر",
    "headline": "آبل تكشف عن ميزات ذكاء اصطناعي ثورية",
    "author_date": "منار . 1 مايو 2025",
    "main_title": "العنوان الرئيسي {}",
    "sub_title": "العنوان الفرعي {}",
    "technology": "تقنية",
    "business": "أعمال",
    "entertainment": "ترفيه",
    "sports": "رياضة",
    "health": "صحة"
  },
  "home_page": "الرئيسية"
};
static const Map<String,dynamic> _en = {
  "Authentication": {
    "settings": "Settings",
    "english": "English",
    "arabic": "Arabic",
    "explore": "Explore",
    "travel": "Travel",
    "headline": "Apple Unveils Revolutionary AI Features",
    "author_date": "Manar . May 1, 2025",
    "main_title": "Main Title {}",
    "sub_title": "Sub Title {}",
    "technology": "Technology",
    "business": "Business",
    "entertainment": "Entertainment",
    "sports": "Sports",
    "health": "Health"
  },
  "home_page": "Home"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
