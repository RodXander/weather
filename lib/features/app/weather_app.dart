import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather/features/main/main_screen.dart';
import 'package:weather/features/search/search_screen.dart';

/// Main app widget in charge of creating [MaterialApp] along with localization delegates, routes and theme.
class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      // This is to ensure that the app's description title is localized
      onGenerateTitle: (context) => AppLocalizations.of(context).weather,
      // CountryLocalization is used by the country picker package to provide localizations
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (_) => const MainScreen(),
        SearchScreen.routeName: (_) => const SearchScreen(),
      },
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
    );
  }
}
