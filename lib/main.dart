import 'package:authorapp/Screen/View/DetailScreen.dart';
import 'package:authorapp/Screen/View/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      'detail': (context) => DetailScreen(),
    },
  ));
}
