import 'package:bmicalci/results_page.dart';
import 'package:bmicalci/reusable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculator_brain.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const inactive = Color(0xFF111328);
const activecolor = Color(0xFF1D1E33);
const mycolor = Color(0xFF444354);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color male = inactive;
  Color female = inactive;
  double _value = 20;
  int height = 180;
  int weight = 74;
  int age = 19;

  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (male == inactive) {
        male = activecolor;
        female = inactive;
      } else {
        male = inactive;
      }
    }
    if (gender == Gender.female) {
      if (female == inactive) {
        female = activecolor;
        male = inactive;
      } else {
        female = inactive;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: reusable(
                    colour: male,
                    cardChild:
                        icon(icons: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: reusable(
                    colour: female,
                    cardChild:
                        icon(icons: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusable(
              colour: activecolor,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8D8E98)),
                          )
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        min: 120.0,
                        max: 220.0,
                        inactiveColor: Color(0xFF8D8E98),
                        value: height.toDouble(),
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: reusable(
                  colour: activecolor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                  primary: mycolor, // <-- Button color
                                  onPrimary: inactive // <-- Splash color
                                  ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                  primary: mycolor, // <-- Button color
                                  onPrimary: inactive // <-- Splash color
                                  ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                child: reusable(
                  colour: activecolor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                  primary: mycolor, // <-- Button color
                                  onPrimary: inactive // <-- Splash color
                                  ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                  primary: mycolor, // <-- Button color
                                  onPrimary: inactive // <-- Splash color
                                  ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
