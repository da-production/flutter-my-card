import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Card listItem(i, t) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          i,
          color: Color(0XFF0366d6),
        ),
        title: Text(
          t,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      home: Scaffold(
        backgroundColor: Color(0XFF0366d6),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/amine.jpg'),
              ),
              Text(
                "Mebrouki Amine",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "FullStack Developper",
                style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 16,
                    letterSpacing: 3.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.cyan,
                ),
              ),
              listItem(Icons.phone, "+213 797 454 539"),
              listItem(Icons.email, "enimablack@gmail.com"),
              listItem(Icons.alternate_email, 'DaProduction')
            ],
          ),
        ),
      ),
    );
  }
}
