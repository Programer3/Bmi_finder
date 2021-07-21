import 'package:flutter/material.dart';
import 'functions_vars_enum_const_condition.dart';

class Resultpage extends StatelessWidget {
  Resultpage({
    required this.bmiresult,
    required this.resulttext,
  });

  final String bmiresult;
  final String resulttext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Result Page'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Your Result :',
                        style: kNumberTextstyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    color: activecardcolor,
                    // shadowColor: Colors.white24,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            resulttext,
                            style: kTitlepink,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(60.0),
                            child: Text(
                              bmiresult,
                              style: kNumberTextstyle,
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
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: cyan,
                      ),
                      height: 50,
                      margin: EdgeInsets.only(top: 5),
                      width: double.infinity,
                      child:
                          Center(child: Text('Re Calculate', style: kCalulate)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
