import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Election App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Election App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result = await showMyAlertDialog(context);
            if (result != null) {
              if (result.votedForTrump) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Result"),
                      content: Text("You voted for Trump!"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Result"),
                      content: Text("You didn't vote for Trump!"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              }
            }
          },
          child: Text('Open Election Dialog'),
        ),
      ),
    );
  }
}

class ElectionDialogResult {
  final bool votedForTrump;

  ElectionDialogResult({required this.votedForTrump});
}

Future<ElectionDialogResult?> showMyAlertDialog(BuildContext context) async {
  return showDialog<ElectionDialogResult>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Election 2020"),
        content: Text("Will you vote for Trump?"),
        actions: [
          ElevatedButton(
            child: Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop(ElectionDialogResult(votedForTrump: true));
            },
          ),
          ElevatedButton(
            child: Text("No"),
            onPressed: () {
              Navigator.of(context).pop(ElectionDialogResult(votedForTrump: false));
            },
          ),
        ],
      );
    },
  );
}