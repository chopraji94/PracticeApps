import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: CardApp(),
));

class CardApp extends StatefulWidget {
  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {

  int codeLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'My Card App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pic-1.png'),
                radius: 90.0,
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Pranav Chopra',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Flower',
              ),
            ),
        SizedBox(
          height: 10.0,
        ),
            Text(
              'Codding Level',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  '$codeLevel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Flower',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    child: Text('Click to add'),
                    color: Colors.redAccent,
                    onPressed: () {
                      setState(() {
                        codeLevel += 1;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '+91-7015947090',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Flower',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  size: 35.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Chopraji94@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Flower',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


