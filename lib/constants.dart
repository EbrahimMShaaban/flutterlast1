import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(12, 17, 53,1);
const Color kAccentColor = Color.fromRGBO(255, 0, 102,1);
const Color kWhiteDarkColor = Color.fromRGBO(39, 43, 77,1);

double sizeFromHeight(BuildContext context,double fraction,{bool hasAppBar = true}){
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar ? (screenHeight - AppBar().preferredSize.height - MediaQuery.of(context).padding.top) : screenHeight) / fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context,double fraction){
  return MediaQuery.of(context).size.width / fraction;
}