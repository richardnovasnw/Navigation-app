import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenM extends StatefulWidget {
  const ScreenM({ Key? key }) : super(key: key);

  @override
  _ScreenMState createState() => _ScreenMState();
}

class _ScreenMState extends State<ScreenM> {
  String screen = 'M';

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
        onPressed: () => context.navigation.screenN(),
        child: Text(screen),
      ),
    );
  }
}
