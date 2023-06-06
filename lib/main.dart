import 'package:flutter/material.dart';
import 'login.dart';
import 'regis.dart';
import 'POP_ICE.dart';
import 'MenuNavbar.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
        'register': (context) => const MyRegister(),
        'MyApp': (context) => MyApp(),
        'menuNavbar': (context) => const MenuNavbar(),
      },
    ),
  );
}
