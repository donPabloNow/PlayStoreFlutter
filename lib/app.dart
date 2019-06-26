import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/home.dart';




class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      //statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark
    ));
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF3366FF),
        //scaffoldBackgroundColor: Colors.white
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      home: HomeView(),
    );
  }
}