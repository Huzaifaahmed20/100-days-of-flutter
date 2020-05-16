import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/screens/TabScreens/CallsListScreen.dart';
import 'package:flutter_whatsapp_redesign/screens/TabScreens/CameraScreen.dart';
import 'package:flutter_whatsapp_redesign/screens/TabScreens/ChatsListScreen.dart';
import 'package:flutter_whatsapp_redesign/screens/TabScreens/GroupsScreen.dart';
import 'package:flutter_whatsapp_redesign/screens/TabScreens/StatusScreen.dart';
import 'package:flutter_whatsapp_redesign/utils/UserProfile.dart';
import 'package:flutter_whatsapp_redesign/widgets/BuilderMethodsWidgets.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homescreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final userProfile = UserProfile().profile;
  bool _isShowAppBar = true;
  TabController tabController;
  final statusIndicatorWidget = BuilderMethodsWidgets().statusIndicator;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5, initialIndex: 1)
      ..addListener(() {
        switch (tabController.index) {
          case 1:
            setState(() {
              _isShowAppBar = true;
            });
            break;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _tabs = [
      CameraScreen(callback: (val) => setState(() => _isShowAppBar = val)),
      ChatsListScreen(),
      StatusScreen(),
      GroupsScreen(),
      CallsListScreen()
    ];

    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth * 0.05;
    double yourWidth = (orjWidth - cameraWidth) * 0.12;
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Color(0xff06A88E),
        //   child: Icon(Icons.message),
        //   onPressed: () {},
        // ),
        appBar: !_isShowAppBar
            ? null
            : AppBar(
                title: Text(
                  'Hi, Huzaifa',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle
                      .copyWith(color: Color(0xff242424)),
                ),
                leading: Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: FadeInImage.assetNetwork(
                          placeholder: userProfile.placeholderAvatar,
                          image: userProfile.avatar,
                        ),
                      ),
                      Positioned(top: 3, child: statusIndicatorWidget())
                    ],
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Color(0xff06A88E),
                          size: 30,
                        ),
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                      backgroundColor: Color(0xff06A88E),
                    ),
                  )
                ],
                bottom: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Color(0xff06A88E),
                  labelColor: Color(0xff06A88E),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .subtitle
                      .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      child: Tab(icon: Icon(Icons.camera_alt)),
                      width: cameraWidth,
                    ),
                    Container(
                      child: Tab(text: 'Chat'),
                      width: yourWidth,
                    ),
                    Container(
                      child: Tab(text: 'Status'),
                      width: yourWidth,
                    ),
                    Container(
                      child: Tab(text: 'Groups'),
                      width: yourWidth,
                    ),
                    Container(
                      child: Tab(text: 'Call'),
                      width: yourWidth,
                    ),
                  ],
                ),
              ),
        body: TabBarView(
          children: _tabs,
          controller: tabController,
        ));
  }
}
