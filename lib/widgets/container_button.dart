import 'package:flutter/material.dart';
import '../constants.dart';

class ContainerButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  final bool isMale;
  final bool gender;

  ContainerButton({this.icon,this.gender, this.title,this.onTap,this.isMale});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: sizeFromWidth(context, 2.3),
        height: sizeFromHeight(context, 4.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(icon,size: gender == isMale ? 50 : 30 ?? 30,color: gender == isMale ? kAccentColor : Colors.white,),
            Text(title,style: TextStyle(
              color: gender == isMale ? kAccentColor : Colors.white,
            ),),
          ],
        ),
        color: kWhiteDarkColor,
      ),
      onTap: onTap,
    );
  }
}
