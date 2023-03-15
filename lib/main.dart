import 'package:flutter/material.dart';
import 'package:office/provider/Bottom_nav_Provider.dart';
import 'package:office/screen/mainActivity.dart';

import 'package:provider/provider.dart';
import './screen/BottomNaviPages/images/imageViewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Bottom_Navigation_Bar()),
      ],
      child: MaterialApp(
        home: mainActivity(),
        // routes: {
        //   imageViewClass.routename: (context) => imageViewClass(),
        // },
      ),
    );
  }
}
