import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlast/constants.dart';
import 'package:flutterlast/veiws/home/view.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimaryColor
      ),
      home: HomeView(),
    );
  }
}
