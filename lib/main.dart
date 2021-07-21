import 'package:bmi_calculator/Resultpage.dart';
import 'package:flutter/material.dart';
import 'classes.dart';
import 'functions_vars_enum_const_condition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultcalculator.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
          thumbColor: thumbclr,
          activeTrackColor: cyanacc,
          overlayColor: overlaysliderclr.withOpacity(.16),
          inactiveTrackColor: cyan,
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Colors.black45,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: BmiHomeinput(),
            ),
          ),
        ),
      ),
    );
  }
}

class BmiHomeinput extends StatefulWidget {
  BmiHomeinput({Key? key}) : super(key: key);

  @override
  _BmiHomeinputState createState() => _BmiHomeinputState();
}

class _BmiHomeinputState extends State<BmiHomeinput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updatecolor(Gender.male);
                  });
                },
                child: NormalContainer(
                  colour: malecardcolor,
                  cardchild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Columnchild(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updatecolor(Gender.female);
                  });
                },
                child: NormalContainer(
                  colour: femalecardcolor,
                  cardchild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Columnchild(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: NormalContainer(
            cardchild: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kTitlesmain,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextstyle,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'cm',
                        style: kLabeltext,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: minheight.toDouble(),
                    max: maxheight.toDouble(),
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                    inactiveColor: cyan,
                  ),
                ],
              ),
            ),
            colour: activecardcolor,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: NormalContainer(
                colour: activecardcolor,
                cardchild: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kTitlesmain,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextstyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Iconbordercontainer(
                                  icon: FontAwesomeIcons.plus),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Iconbordercontainer(
                                icon: FontAwesomeIcons.minus,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: NormalContainer(
                colour: activecardcolor,
                cardchild: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kTitlesmain,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextstyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Iconbordercontainer(
                                  icon: FontAwesomeIcons.plus),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Iconbordercontainer(
                                icon: FontAwesomeIcons.minus,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resultpage(
                    bmiresult: calc.calculatebmi(),
                    resulttext: calc.checkresult(),
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: cyan,
              ),
              height: 50,
              margin: EdgeInsets.only(top: 5),
              width: double.infinity,
              child: Center(child: Text('CALCULATE', style: kCalulate)),
            ),
          ),
        ),
      ],
    );
  }
}
