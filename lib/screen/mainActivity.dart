import 'package:flutter/material.dart';
import 'package:office/provider/Bottom_nav_Provider.dart';
import 'package:office/screen/BottomNaviPages/images/images.dart';
import 'package:office/screen/BottomNaviPages/videos/videos.dart';
import 'package:provider/provider.dart';


class mainActivity extends StatefulWidget {

  @override
  State<mainActivity> createState() => _mainActivityState();
}
class _mainActivityState extends State<mainActivity> {
  List<Widget> pages =[ImageHomePage(), VideoHomePage()];
  @override
  Widget build(BuildContext context) {
    return Consumer<Bottom_Navigation_Bar>(builder: (context, nav, child){
      return   Scaffold(
      body: pages[nav.CurrentIndex],
       bottomNavigationBar:
        BottomNavigationBar(
          onTap: (value) {
            nav.changeIndex(value);
          },currentIndex: nav.CurrentIndex,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image'),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'video'),
       ],),
    );
    });
  }
}