import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('hii'),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: BmiHome(),
            ),
          ),
        ),
      ),
    );
  }
}

class BmiHome extends StatelessWidget {
  const BmiHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
