import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenN extends StatefulWidget {
  const ScreenN({ Key? key }) : super(key: key);

  @override
  _ScreenNState createState() => _ScreenNState();
}

class _ScreenNState extends State<ScreenN> {
  String screen = 'N';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.navigation.screenD(),
        child: Text(screen),
      ),
    );
  }
}
