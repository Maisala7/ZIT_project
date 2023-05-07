import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';
import 'package:zit_user_screens/app_screen/log_in.dart';
import 'app_screen/Registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'zit project',
        debugShowCheckedModeBanner: false,
        home: Loginscreen(),
        //start localizations
        // ignore: prefer_const_literals_to_create_immutables
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", ""),
        ],
        locale: const Locale("ar", ""),
        //end localizations
        theme: ThemeData(
          textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
          primaryColor: const Color.fromARGB(255, 4, 70, 75),
        ),
      );
    });
  }
}
