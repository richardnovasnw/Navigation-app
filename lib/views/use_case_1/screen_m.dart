import 'package:flutter/material.dart';

import '../../ui.dart';

class ScreenM extends StatefulWidget {
  const ScreenM({ Key? key }) : super(key: key);

  @override
  _ScreenMState createState() => _ScreenMState();
}

class _ScreenMState extends State<ScreenM> {
  String screen = 'Screen M';

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
        onPressed: () => context.navigation.screenN(),
        child: const Text('N'),
      ),
    );
  }
}
