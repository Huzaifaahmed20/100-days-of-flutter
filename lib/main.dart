import 'package:flutter/material.dart';

//screens
import './screens/HomeScreen.dart';
import './screens/PhoneVerifyScreen.dart';
import './screens/Registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Whatsapp Redesign',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.green.shade500,
        textTheme: TextTheme(
          title: TextStyle(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.w700),
          caption: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 19,
          ),
          subtitle: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: RegistrationScreen(),
      routes: {
        PhoneVerifyScreen.routeName: (_) => PhoneVerifyScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
    );
  }
}
