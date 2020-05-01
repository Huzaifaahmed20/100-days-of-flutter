import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_whatsapp_redesign/utils/Users.dart';

import '../../widgets/UserStoriesList.dart';
import '../../widgets/BuilderMethodsWidgets.dart';

class ChatsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customCircleAvatar = BuilderMethodsWidgets().customCircleAvatar;
    return Column(
      children: <Widget>[
        Expanded(
          // height: MediaQuery.of(context).size.height * 0.20,
          child: UserStoriesList(),
        ),
        Divider(
          thickness: 1,
          color: Color(0xffD0D2D3),
        ),
        Expanded(
          flex: 4,
          child: ListView.separated(
            separatorBuilder: (_, __) => Divider(
              thickness: 1,
              color: Color(0xffD0D2D3),
            ),
            reverse: true,
            itemCount: DUMMY_CHATS_DATA.length,
            itemBuilder: (ctx, idx) {
              final userName = DUMMY_CHATS_DATA[idx].name;
              final imageUrl = DUMMY_CHATS_DATA[idx].profileImage;
              final message = DUMMY_CHATS_DATA[idx].lastMessage;
              final time = DUMMY_CHATS_DATA[idx].time;
              final doubleTickIcon = 'assets/images/doubletick.png';
              final placeholderImage = 'assets/images/placeholder.png';

              return Slidable(
                actionExtentRatio: 0.20,
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Icon(Icons.delete, color: Colors.red)),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Icon(Icons.videocam, color: Color(0xff06A88E))),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Icon(Icons.call, color: Color(0xff06A88E))),
                ],
                child: ListTile(
                  leading: customCircleAvatar(
                    avatarImage: imageUrl,
                    placeholderImage: placeholderImage,
                    height: 50.0,
                    width: 50.0,
                  ), //todo: put status indicator

                  title: Text(
                    '$userName',
                    style: TextStyle(
                        color: Color(0xff222222), fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Image.asset(
                        doubleTickIcon,
                        height: 15,
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '$message',
                          style: TextStyle(
                              color: Color(0xffC0C0C0),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  trailing: Text(
                    '$time',
                    style: TextStyle(
                        color: Color(0xffC0C0C0), fontWeight: FontWeight.bold),
                  ),
                  // subtitle: ,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
