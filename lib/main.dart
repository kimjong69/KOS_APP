
import 'package:flutter/material.dart';
import 'package:kos_app/Screen1.dart';
import 'package:kos_app/Screen2.dart';
import 'package:kos_app/Screen4.dart';
import 'package:kos_app/Screen5.dart';
import 'package:kos_app/Screen6.dart';
import 'package:kos_app/Screen7.dart';
import 'package:kos_app/Screen8.dart';
import 'package:kos_app/SplashScreen.dart';

import 'Screen3.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      title: 'KOS',
      theme: ThemeData.dark(),
      routes: {
        'splash':(context)=> const SplashScreen(),
        'screen1':(context)=> const ScreenOne(),
        'screen2':(context)=> const ScreenTwo(),
        'screen3':(context)=> const ScreenThree(),
        'screen4':(context)=> const ScreenFour(),
        'screen5':(context)=>const ScreenFive(),
        'screen6':(context)=>const ScreenSix(),
        'screen7':(context)=>const ScreenSeven(),
        'screen8':(context)=>const ScreenEight(),
      },
    ),
  );
}


