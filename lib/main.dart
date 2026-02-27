import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/routing/router_generation_config.dart';
import 'core/styling/theme_data.dart';
import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale( 'ar'),
        assetLoader: CodegenLoader(),
        child: MyApp()
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routerConfig: RouterGenerationConfig.goRouter,
    );
  }
}