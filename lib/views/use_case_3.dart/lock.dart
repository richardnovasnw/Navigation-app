import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class Lock extends StatefulWidget {
  const Lock({Key? key}) : super(key: key);

  @override
  _LockState createState() => _LockState();
}

class _LockState extends State<Lock> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: GestureDetector(
            onTap: () {
              context.navigation.home();
              context.navigation.home();
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.lock),
            ),
          ),
        ),
      ),
    );
  }
}
