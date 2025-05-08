import 'package:design_system/themes/theme.dart';
import 'package:design_system/themes/util.dart';
import 'package:design_system/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:localization/get_string.dart';
import 'package:localization/localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins");
    AppTheme theme = AppTheme(textTheme);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: supportedLocale,
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      title: 'Flutter Demo',
      theme: theme.light(),
      darkTheme: theme.dark(),
      home: const Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AppText(context.getString("greeting"))),
    );
  }
}
