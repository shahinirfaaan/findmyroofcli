import 'package:findmyroof1/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:findmyroof1/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 0, 118, 206)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Color.fromARGB(255, 0, 118, 206),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SplashScreen(),
    );
  }
}
