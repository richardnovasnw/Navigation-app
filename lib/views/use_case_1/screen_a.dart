import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  String screen = 'Screen A';

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
        onPressed: () => context.navigation.screenB(),
        child: Text('B'),
      ),
    );
  }
}
