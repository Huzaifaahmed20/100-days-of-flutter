import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/screens/Registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Whatsapp Redesign',
      theme: ThemeData(
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
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: RegistrationScreen(),
    );
  }
}
