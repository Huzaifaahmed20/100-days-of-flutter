import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_whatsapp_redesign/widgets/CustomDropDown.dart';
import '../utils/countriesData.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff06A88E),
        child: Icon(Icons.arrow_forward),
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              color: Color(0xff06A88E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Image.asset(
                    'assets/images/whatsappLogo.png',
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/WhatsAppText.png',
                    height: 50,
                  ),
                ],
              ),
            ),
            clipper: BottomWaveClipper(),
          ),
          Expanded(
            child: Column(
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 40,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: '+92',
                          hintStyle: TextStyle(
                              color: Color(0xff222222),
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
                      padding: const EdgeInsets.only(left: 20),
                      width: 320,
                      child: TextField(
                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          hintText: '320-1234567',
                          hintStyle: TextStyle(
                              color: Color(0xff222222),
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
            ),
          )
        ],
      ),
    );
  }
}

class CountriesDropDown extends StatelessWidget {
  List<DropdownMenuItem<String>> countriesOption() {
    return countries.map((item) {
      return DropdownMenuItem<String>(
        value: item['alpha2Code'],
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.network(
                item['flag'],
                height: 10,
                width: 10,
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item['name']),
            ),
          ],
        ),
      );
    }).toList();
  }

  const CountriesDropDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomDropDown(
        label: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.network(
                countries[0]['flag'],
                height: 50,
                width: 50,
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                countries[0]['name'],
                style: TextStyle(color: Color(0xff222222), fontSize: 50),
              ),
            ),
          ],
        ), //todo: show initial country
        options: countriesOption(),
        handleChange: (val) {},
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
 Path getClip(Size size) {
    // Arranca desde la punta topLeft
    Path path = Path();
    path.lineTo(0, size.height * .9);
    path.arcToPoint(
      Offset(size.width, size.height),
      radius: Radius.elliptical(20, 5),
    );
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
