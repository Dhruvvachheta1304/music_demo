import 'package:flutter/material.dart';
import 'package:music_demo/HomeMusicScreen.dart';
import 'temp.dart';
import 'package:music_demo/Play.dart';
import 'package:music_demo/singer.dart';

void main() {
  runApp(const MaterialApp(
    title: "Music Stream App",
    debugShowCheckedModeBanner: false,
    home: HomeMusicScreen(),
  ));
}
