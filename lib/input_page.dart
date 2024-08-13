// ignore_for_file: constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';
// ignore: unused_import
import 'calculate_brain.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
      ),
      home: const InputPage(),
    );
  }
}

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const KnumberTextStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w900,
);
const KtitleTextstyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
 );
 const resulTextstyle = TextStyle(
  color: Color(0xFF24D876),
   fontSize: 22.0,
  fontWeight: FontWeight.bold,
 );
 const texttwostyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
 );
 const bodytextstyle = TextStyle(
  fontSize: 22.0,

 );

enum SelectGender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  SelectGender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI XISAABIYE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = SelectGender.male;
                      });
                    },
                    child: reusableCard(
                      color: selectedGender == SelectGender.male
                          ? activeCardColor
                          : inactiveColor,
                      cardChild: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Rag',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = SelectGender.female;
                      });
                    },
                    child: reusableCard(
                      color: selectedGender == SelectGender.female
                          ? activeCardColor
                          : inactiveColor,
                      cardChild: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Dumar',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Dhirirkaga',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: KnumberTextStyle,
                      ),
                      const SizedBox(width: 5.0),
                      const Text(
                        'cm',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: const Color(0xFFFB1555),
                    inactiveColor: const Color(0XFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Mizanka jirkaga',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          weight.toString(),
                          style: KnumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Da,da Jirto',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          age.toString(),
                          style: KnumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      BottomButton(
  onTap: () {
    // Implement the BMI calculation here
    CalculateBrain calc = CalculateBrain(height: height, weight: weight);
    // Navigate to the results page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultsPage(
        bmiResult: calc.calculateBMI(),
        resultText: calc.getResult(),
        getInterPretion: calc.getInterPretion(),
      )),
    );
  },
  title: 'XISAABI',
  color: bottomContainerColor,
),
          ],
        ),
      ),
    );
  }
}







class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color color;

  const BottomButton({
    required this.onTap,
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0, // Replace with your bottomContainerHeight variable
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}




Container reusableCard({
  required Color color,
  required Widget cardChild,
}) {
  return Container(
    margin: const EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: cardChild,
  );
}



class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child; // If you want to pass a child widget, such as a Column

  // Constructor with named parameters
  ReusableCard({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: child, // Use the child widget inside the Container
    );
  }
}