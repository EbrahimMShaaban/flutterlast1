import 'package:flutter/material.dart';
import 'package:flutterlast/constants.dart';
import 'package:flutterlast/veiws/home/view.dart';

class ResultView extends StatelessWidget {
  final double result;
  ResultView(this.result);

  String get resultTitle{
    if(result <= 25 && result >= 18.5){
      return 'Normal';
    }else if(result < 18.5){
      return 'Under Weight';
    }else{
      return 'Over Weight';
    }
  }

  String get advise{
    if(result <= 25 && result >= 18.5){
      return 'You have a normal body';
    }else if(result < 18.5){
      return 'You have to eat more';
    }else{
      return 'You have to go to club';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Your Result',style : TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            Container(
              width: double.infinity,
              height: sizeFromHeight(context, 1.5),
              color: kWhiteDarkColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultTitle,style: TextStyle(
                    fontSize: 17,
                    color: resultTitle == 'Normal'? Colors.greenAccent : Colors.red
                  ),),
                  Text(result.toStringAsFixed(1),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                  Text(advise,style: TextStyle(
                      fontSize: 20,
                    color: Colors.white70
                  )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: sizeFromHeight(context, 10),
              child: RaisedButton(
                color: kAccentColor,
                child: Text('RE-CALCULATE YOUR BMI'),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> HomeView()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
