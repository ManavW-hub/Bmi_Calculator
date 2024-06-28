import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.interpretation, required this.reusultText, required this.bmiResult});

  final String bmiResult;
  final String reusultText;
  final String interpretation;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
               padding: EdgeInsets.all(15.0),
               alignment: Alignment.bottomLeft,
               child: Text(
                 'Your Result', 
                 style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActiveCardColour, 
            cardChild:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                 Text(
                  reusultText.toUpperCase(),
                  style: kResultTextStyle,
                 ),
                Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
                Text(
                  interpretation,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ],
            ), 
            onPress:() {
                        print("Button pressed!");
                }, 
            ),
          ),
         BottomButton( buttonTitle: 'RE-CALCULATE', 
         onTap: (){
          Navigator.pop(context);
         },
         )
       ],
      ),
    );
  }
}