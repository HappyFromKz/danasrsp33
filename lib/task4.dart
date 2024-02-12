import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Меню-гамбургер'),
        backgroundColor: Colors.green[600],
      ),
      body: App(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text('Мистер Твистер'),
                accountEmail: Text("home@dartflutter"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Changed shape to circle
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("0 себе"),
              leading: Icon(Icons.account_box),
              onTap: () {},
            ),
            ListTile(
              title: Text("Настройки"),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}