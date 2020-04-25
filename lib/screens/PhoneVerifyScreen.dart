import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//screen
import '../screens/HomeScreen.dart';
//widget
import '../widgets/MainScreenHeader.dart';

class PhoneVerifyScreen extends StatelessWidget {
  static const routeName = '/verifyphone';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff06A88E),
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).pushNamed(HomeScreen.routeName);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MainScreenHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text('Waiting to automatically detect and',
                style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Color(0xff3B3B3B),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Text(
                  'sms send to +92 3201234567',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Color(0xff3B3B3B),
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                codeField(context),
                codeField(context),
                codeField(context),
                codeField(context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 40),
            child: RichText(
              text: TextSpan(
                style:
                    Theme.of(context).textTheme.subtitle.copyWith(fontSize: 12),
                children: <TextSpan>[
                  TextSpan(text: 'Did’nt receive the code?'),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('resend code'),
                    text: ' RESEND CODE',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Color(0xff3B3B3B), fontSize: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget codeField(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
      width: 60,
      child: TextField(
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .subtitle
            .copyWith(color: Color(0xff3B3B3B), fontSize: 20),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff06A88E), width: 2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff06A88E), width: 2),
          ),
        ),
      ),
    ),
  );
}
