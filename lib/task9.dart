import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
          'Show SnackBar',
          style: TextStyle(fontSize: 25.0),
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Hey! This is a SnackBar message.'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
          onPrimary: Colors.white,
          padding: EdgeInsets.all(8.0),
          splashFactory: InkRipple.splashFactory, // Для эффекта волны
        ),
      ),
    );
  }
}