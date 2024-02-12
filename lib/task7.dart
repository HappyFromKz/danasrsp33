import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedGender;

  void _handleRadioValueChange(String? value) {
    setState(() {
      selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Gender'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RadioListTile<String>(
              title: Text('Male'),
              value: 'Male',
              groupValue: selectedGender,
              onChanged: _handleRadioValueChange,
            ),
            RadioListTile<String>(
              title: Text('Female'),
              value: 'Female',
              groupValue: selectedGender,
              onChanged: _handleRadioValueChange,
            ),
            RadioListTile<String>(
              title: Text('Other'),
              value: 'Other',
              groupValue: selectedGender,
              onChanged: _handleRadioValueChange,
            ),
            SizedBox(height: 20),
            selectedGender != null
                ? Center(
                    child: Text(
                      'Hello $selectedGender',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}