import 'package:flutter/material.dart';
import '../utils/countriesData.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_whatsapp_redesign/widgets/CustomDropDown.dart';

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
