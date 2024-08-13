// ignore: unused_import
// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'input_page.dart';
// ignore: use_key_in_widget_constructors
class ResultsPage extends StatelessWidget {
  // get backgroundColor => null;
    ResultsPage({super.key, required this.getInterPretion, required this.bmiResult,  required this.resultText,});



    final String bmiResult;
    final String resultText;
    final String getInterPretion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI XISAABIYE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text('Jawaabta ', style: KtitleTextstyle,),
            ),
            ),
           Expanded(
              flex: 5,
              child: ReusableCard(
                color: activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: resulTextstyle,
                    
                    ),
                    Text(
                      bmiResult, style: texttwostyle,
                    ),
                    Text( getInterPretion ,
                    textAlign: TextAlign.center
                    , style: bodytextstyle,),
                  ],

                ),
              ),
            ),


          BottomButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: 'Markale XISAABI',  
                  color: bottomContainerColor, 
                ),
            
        ],
      ),
    );
  }
}

