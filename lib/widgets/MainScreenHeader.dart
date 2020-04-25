import 'package:flutter/material.dart';

class MainScreenHeader extends StatelessWidget {
  const MainScreenHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
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
