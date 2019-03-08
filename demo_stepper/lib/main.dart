import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStepper(),
    ));

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {

  int _currentStep = 0;
  List<Step> mySteps = [
    Step(title: Text("First Setp"), content: Text("Learn Dart")),
    Step(title: Text("Second Setp"), content: Text("Learn Flutter")),
    Step(title: Text("Third Setp"), content: Text("Do Much Money")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Stepper'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Stepper(
                currentStep: _currentStep,
                steps: mySteps,
                onStepContinue: () {
                  if (_currentStep < mySteps.length -1 ){
                   setState(() {
                     _currentStep =_currentStep + 1; 
                   });
                    return;
                  }
                  setState(() {
                   _currentStep = 0; 
                  });
                } ,
                onStepCancel: (){
                  if (_currentStep > 0 ){
                   setState(() {
                     _currentStep = _currentStep - 1; 
                   });
                  }
                } ,
                onStepTapped: (step) {
                  setState(() {
                    _currentStep = step;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}