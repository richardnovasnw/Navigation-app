import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({ Key? key }) : super(key: key);

  @override
  _ScreenBState createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
 String screen = 'Screen B';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screen),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(screen),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.navigation.screenC(),
        child: const Text('C'),
      ),
    );
  }
}
