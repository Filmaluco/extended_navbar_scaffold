import 'package:example/example.dart';
import 'package:example/gatheringScaffold/gathering_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExtendedNavBar(),
    );
  }
}

class ExtendedNavBar extends StatefulWidget {
  ExtendedNavBar({Key key}) : super(key: key);

  _ExtendedNavBarState createState() => _ExtendedNavBarState();
}

class _ExtendedNavBarState extends State<ExtendedNavBar> {

  @override
  Widget build(BuildContext context) {
    return GatheringScaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExamplePage()));
              },
              child: Text(
                "Open Example",
                style: TextStyle(fontSize: 20.0),
              ),
            )],
          ),
        ),
      )
    );
  }
}