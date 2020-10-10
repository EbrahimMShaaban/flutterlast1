import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: must_be_immutable
class BottomContainer extends StatelessWidget {
  final String title;
  int value;
  final Function onPLus;
  final Function onMinus;
  BottomContainer({this.title, this.value,this.onMinus,this.onPLus});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteDarkColor.withOpacity(0.5),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: sizeFromWidth(context, 2.3),
      height: sizeFromHeight(context, 4.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(title),
          Text(value.toString()),
          Row(
            children: <Widget>[
              Spacer(flex: 3,),
              GestureDetector(
                onTap: onMinus,
                child: CircleAvatar(
                  backgroundColor: kWhiteDarkColor,
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: onPLus,
                child: CircleAvatar(
                  backgroundColor: kWhiteDarkColor,
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              ),
              Spacer(flex: 3,),
            ],
          ),
        ],
      ),
    );
  }
}
