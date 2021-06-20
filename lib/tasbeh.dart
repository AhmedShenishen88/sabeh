import 'package:first_app/Dheker.dart';
import 'package:flutter/material.dart';

class Tasbeh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TasbehState();
  }
}

class TasbehState extends State<Tasbeh> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _zeroCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/BGG.gif'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'عدد التسبيح',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 31.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton.extended(
                  heroTag: null,
                  onPressed: _zeroCounter,
                  label: Text(
                    'تصفير',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(Icons.settings_backup_restore),
                  backgroundColor: Colors.white,
                ),
              )),
          Align(
            alignment: Alignment(0.1, 0.7),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: _incrementCounter,
              label: Text(
                'تسبيح',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(Icons.fingerprint),
              backgroundColor: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dhekr()));
              },
              label: Text(
                'ذكر',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.book),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
