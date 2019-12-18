import 'dart:io';
import 'package:MoneyLotto/misc/themes/appTheme1.dart';
import 'package:MoneyLotto/functionality/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new MyApp()));
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Main App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme1.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: LoginPage(),
    );
  }
}

// final FirebaseAuth _auth = FirebaseAuth.instance;
// Future<Widget> getLandingPage() async {
//   return StreamBuilder<FirebaseUser>(
//     stream: _auth.onAuthStateChanged,
//     builder: (BuildContext context, snapshot) {
//       if (snapshot.hasData && (!snapshot.data.isAnonymous)) {
//         return HomeScreen();
//       }
//       return LoginPage();
//     },
//   );
// }

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}