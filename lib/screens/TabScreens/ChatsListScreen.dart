import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/utils/Users.dart';

class ChatsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DUMMY_CHATS_DATA.length,
            itemBuilder: (ctx, idx) {
              final imageUrl = DUMMY_CHATS_DATA[idx].profileImage;
              final userNAme = DUMMY_CHATS_DATA[idx].name;
              final placeholderImage = 'assets/images/placeholder.png';
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey)),
                        height: 70,
                        width: 70,
                        child: FadeInImage.assetNetwork(
                          placeholder: placeholderImage,
                          image: imageUrl,
                        ),
                      ),
                    ),
                  ),
                  Text(userNAme.split(' ')[0])
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
