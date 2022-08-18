import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hoststar/home.dart';
import 'package:hoststar/lodding.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lodding(),

  ));
}

