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
  List<String> selectedHobbies = [];

  void _toggleHobby(String hobby) {
    setState(() {
      if (selectedHobbies.contains(hobby)) {
        selectedHobbies.remove(hobby);
      } else {
        selectedHobbies.add(hobby);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Hobbies'),
      ),
      body: ListView(
        children: [
          _buildHobbyTile('Football'),
          _buildHobbyTile('Basketball'),
          _buildHobbyTile('Swimming'),
          _buildHobbyTile('Reading'),
          _buildHobbyTile('Cooking'),
          _buildHobbyTile('Traveling'),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Selected Hobbies: ${selectedHobbies.join(", ")}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHobbyTile(String hobby) {
    return CheckboxListTile(
      title: Text(hobby),
      value: selectedHobbies.contains(hobby),
      onChanged: (bool? value) {
        _toggleHobby(hobby);
      },
    );
  }
}