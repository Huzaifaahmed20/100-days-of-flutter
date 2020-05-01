import 'package:flutter/material.dart';

import '../utils/Users.dart';
import './BuilderMethodsWidgets.dart';

class UserStoriesList extends StatelessWidget {
  const UserStoriesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customCircleAvatar = BuilderMethodsWidgets().customCircleAvatar;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: DUMMY_CHATS_DATA.length,
      itemBuilder: (ctx, idx) {
        final imageUrl = DUMMY_CHATS_DATA[idx].profileImage;
        final userNAme = DUMMY_CHATS_DATA[idx].name;
        final placeholderImage = 'assets/images/placeholder.png';
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: customCircleAvatar(
                avatarImage: imageUrl,
                placeholderImage: placeholderImage,
                height: 60.0,
                width: 60.0,
              ),
            ),
            Text(
              userNAme.split(' ')[0],
              style: TextStyle(
                  color: Color(0xff242424), fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}
