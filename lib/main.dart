import 'package:flutter/material.dart';

import 'otherworks/anotherone.dart';
import 'otherworks/numberone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("AppBar");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: "1"),
                Tab(icon: Icon(Icons.directions_transit), text: "2"),
                Tab(icon: Icon(Icons.directions_bike), text: "3"),
                Tab(icon: Icon(Icons.directions_bike), text: "4"),
                Tab(icon: Icon(Icons.directions_car), text: "5"),
                Tab(icon: Icon(Icons.directions_transit), text: "6"),
                Tab(icon: Icon(Icons.directions_bike), text: "7"),
                Tab(icon: Icon(Icons.directions_bike), text: "8"),
              ],
            ),
            title: Text('Study'),
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: cusIcon,
                onPressed: () {
                  setState(() {
                    if (this.cusIcon.icon == Icons.search) {
                      this.cusIcon = Icon(Icons.cancel);
                      this.cusSearchBar = TextField(
                          textInputAction: TextInputAction.go,
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0));
                    } else {
                      this.cusIcon = Icon(Icons.search);
                      this.cusSearchBar = Text("Study");
                    }
                  });
                },
              )
            ],
          ),
          body: TabBarView(
            children: [
              overall(),
              something(),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
