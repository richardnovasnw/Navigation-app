import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenD extends StatefulWidget {
  const ScreenD({ Key? key }) : super(key: key);

  @override
  _ScreenDState createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  String screen = 'D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen $screen'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen $screen'),
          ],
        ),
      ),
     
    );
  }
}
