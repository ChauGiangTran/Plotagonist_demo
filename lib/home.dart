import 'package:flutter/material.dart';
import './editor/add-new.dart';
import './Muse/muse_one.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddNewPage()));
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 250,
              color: Color(0xFFb20a2c),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Demo splash screen',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ),
          ),
          SizedBox(height: 15),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (_) => MuseOnePage())
              );
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 250,
              color: Color(0xFF22c1c3),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Demo editor',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    )));
  }
}
