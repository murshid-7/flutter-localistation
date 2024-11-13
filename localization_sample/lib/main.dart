import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/localization_provider.dart';
import 'generated/l10n.dart';
import 'home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocalizationProvider(),
      child: Builder(
        builder: (context) {
          final localization = Provider.of<LocalizationProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: localization.locale,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              S.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
