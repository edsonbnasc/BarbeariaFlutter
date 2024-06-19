import 'package:flutter/material.dart';
import 'package:barbearia/view/splash_screen.dart';
import 'package:barbearia/view/start_page/start_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rei das Tranças',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   backgroundColor: Color.fromRGBO(17,19,21,.9),
      // ),
      home: StartPageView(),
    );
  }
}