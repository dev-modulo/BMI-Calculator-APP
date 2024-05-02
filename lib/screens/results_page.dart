import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: backgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: titleTextStyle,),

          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: resultTextStyle,),
                  Text(bmiResult, style: bmiTextStyle,),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(interpretation,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
              onPress: (){},
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE'),

        ],
      ),
    );
  }
}


