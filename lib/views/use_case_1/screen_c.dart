import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenC extends StatefulWidget {
  const ScreenC({ Key? key }) : super(key: key);

  @override
  _ScreenCState createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  String screen = 'Screen C';

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
        onPressed: () => context.navigation.screenM(),
        child: const Text('M'),
      ),
    );
  }
}
