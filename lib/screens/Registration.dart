import 'package:flutter/material.dart';

//screen
import '../screens/PhoneVerifyScreen.dart';

//widgets
import '../widgets/MainScreenHeader.dart';
import '../widgets/CountriesDropDownField.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff06A88E),
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).pushNamed(PhoneVerifyScreen.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MainScreenHeader(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Enter your mobile number to \nlogin or register',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Color(0xff3B3B3B)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Countries',
                    style: TextStyle(color: Color(0xff7F7F80)),
                  ),
                ),
                CountriesDropDown(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Your Mobile Number*',
                    style: TextStyle(color: Color(0xff7F7F80)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: '+92',
                          hintStyle: TextStyle(
                              color: Color(0xff7F7F80),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          enabledBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color(0xff06A88E), width: 2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: TextField(
                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          hintText: '320-1234567',
                          hintStyle: TextStyle(
                              color: Color(0xff7F7F80),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          enabledBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color(0xff06A88E), width: 2),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
