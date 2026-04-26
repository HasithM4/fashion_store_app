import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDc4WRQFyolks7Nb483p3KBqeFABL-DGrc",
      appId: "1:825850569599:android:05798fe24ab00f10bd704a",
      messagingSenderId: "825850569599",
      projectId: "fashion-store-app-23da2-0155",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ware Aware',
      theme: ThemeData(
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
