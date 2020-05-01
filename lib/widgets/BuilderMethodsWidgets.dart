import 'package:flutter/material.dart';

class BuilderMethodsWidgets {
  Widget statusIndicator() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff707070),
          border: Border.all(
            color: Color(0xff707070),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 6,
      width: 6,
    );
  }

  Widget codeField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 60,
        child: TextField(
          keyboardType: TextInputType.number,
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

  Widget customCircleAvatar({avatarImage, placeholderImage, height, width}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          // border: Border.all(color: Colors.grey),
        ),
        height: height,
        width: width,
        child: FadeInImage.assetNetwork(
          placeholder: placeholderImage,
          image: avatarImage,
        ),
      ),
    );
  }
}
