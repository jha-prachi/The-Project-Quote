import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  int selectitem = 1;
  List<Widget> months = [
    Text(
      'January',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'February',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'March',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'April',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'May',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'June',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'July',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'August',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'September',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      'December',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  ];
  List<Widget> dates = [
    Text(
      '1',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      '2',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      '3',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      '4',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    Text(
      '5',
      style: TextStyle(color: Colors.white, fontSize: 20),
    )
  ];
  List<Widget> year = [Text('2018',style: TextStyle(
          color: Colors.white, fontSize: 20),), Text('2019',style: TextStyle(
          color: Colors.white, fontSize: 20),), Text('2020',style: TextStyle(
          color: Colors.white, fontSize: 20),), Text('2021',style: TextStyle(
          color: Colors.white, fontSize: 20),)];
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print('asd');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 80,
                left: 140,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://c7.uihere.com/files/255/44/978/avatar-icon-3d-character-icon-vector-material-thumb.jpg"),
                    ),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Date of Birth',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: CupertinoPicker(
                        children: months,
                        onSelectedItemChanged: (value) {
                          print(value);
                        },
                        itemExtent: 50,
                        looping: true,
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 150,
                      child: CupertinoPicker(
                        children: dates,
                        onSelectedItemChanged: (value) {
                          print(value);
                        },
                        itemExtent: 50,
                        looping: true,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 20.0)),
                    Container(
                      height: 150,
                      width: 90,
                      child: CupertinoPicker(
                        children: year,
                        onSelectedItemChanged: (value) {
                          print(value);
                        },
                        itemExtent: 50,
                        looping: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.9,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(60.0),
                            child: RaisedButton.icon(
                              onPressed: () {
                                print('Button Clicked.');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              label: Text(
                                'Back',
                                style: TextStyle(
                                  color: Colors.teal[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              icon: Icon(
                                Icons.navigate_before,
                                color: Colors.teal[900],
                              ),
                              textColor: Colors.tealAccent,
                              splashColor: Colors.black,
                              color: Colors.white60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RaisedButton.icon(
                              onPressed: () {
                                // print('Button Clicked.');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              label: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.teal[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              icon: Icon(
                                Icons.navigate_next,
                                color: Colors.teal[900],
                              ),
                              textColor: Colors.tealAccent,
                              splashColor: Colors.black,
                              color: Colors.white60,
                            ),
                          ),
                        ])),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
