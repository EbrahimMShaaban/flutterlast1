import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlast/constants.dart';
import 'package:flutterlast/veiws/result/view.dart';
import 'package:flutterlast/widgets/bottom_container.dart';
import 'package:flutterlast/widgets/container_button.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool gender;
  double heightValue = 175;
  int age = 20;
  int weight = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ContainerButton(
                title: 'Male',
                gender: gender,
                isMale: true,
                icon: Icons.ac_unit,
                onTap: (){
                  setState(() {
                    gender = true;
                  });
                },
              ),
              ContainerButton(
                title: 'Female',
                gender: gender,
                isMale: false,
                icon: Icons.build,
                onTap: (){
                  setState(() {
                    gender = false;
                  });
                },
              ),
            ],
          ),
          Container(
            color: kWhiteDarkColor.withOpacity(0.5),
            height: sizeFromHeight(context, 3),
            margin: EdgeInsets.symmetric(horizontal: 18),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('HEIGHT',style: TextStyle(color: Colors.white70,fontSize: 15),),
                Text('${heightValue.toInt()} cm',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                Slider(
                  min: 120,
                  max: 200,
                  value: heightValue,
                  inactiveColor: Colors.grey.withOpacity(0.2),
                  activeColor: kAccentColor,
                  onChanged: (double value){
                    setState(() {
                      heightValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BottomContainer(
                title: 'AGE',
                value: age,
                onMinus: (){
                  setState(() {
                    age--;
                  });
                },
                onPLus: (){
                  setState(() {
                    age++;
                  });
                },
              ),
              BottomContainer(
                title: 'WEIGHT',
                value: weight,
                onPLus: (){
                  setState(() {
                    weight++;
                  });
                },
                onMinus: (){
                  setState(() {
                    weight--;
                  });
                },
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: sizeFromHeight(context, 10),
            child: RaisedButton(
              color: kAccentColor,
              child: Text('CALCULATE YOUR BMI'),
              onPressed: (){
                double result = weight/pow(heightValue/100, 2);
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> ResultView(result)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
