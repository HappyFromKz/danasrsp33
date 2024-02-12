import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTabBarExample(),
  ));
}

class MyTabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: createTabBar(),
          title: Text('Flutter TabBar Example'),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
            Center(child: Text("Boat")),
            Center(child: Text("Railway")),
            Center(child: Text("Bus")),
          ],
        ),
      ),
    );
  }

  TabBar createTabBar() {
    return TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.directions_car),
          text: "Car",
        ),
        Tab(
          icon: Icon(Icons.directions_transit),
          text: "Transit",
        ),
        Tab(
          icon: Icon(Icons.directions_bike),
          text: "Bike",
        ),
        Tab(
          icon: Icon(Icons.directions_boat),
          text: "Boat",
        ),
        Tab(
          icon: Icon(Icons.directions_railway),
          text: "Railway",
        ),
        Tab(
          icon: Icon(Icons.directions_bus),
          text: "Bus",
        ),
      ],
    );
  }
}