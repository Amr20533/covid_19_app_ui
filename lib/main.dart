import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primaryColor:kPrimaryColor,
        scaffoldBackgroundColor:kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor:kTextColor)
      ),
      home: MainPage(),
    );
  }
}
