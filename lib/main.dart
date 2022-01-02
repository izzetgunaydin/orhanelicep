import 'package:flutter/material.dart';
import 'package:orhanelicep/categories_screen.dart';
import 'package:orhanelicep/constants.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orhaneli Cep',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          caption: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondonsed',
              fontWeight: FontWeight.bold,
              color: yesil),
        ),
      ),

      home: const CategoriesScreen(),
    );
  }
}
