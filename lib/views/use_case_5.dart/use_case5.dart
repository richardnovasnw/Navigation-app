import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class UseCase5 extends StatefulWidget {
  const UseCase5({Key? key}) : super(key: key);

  @override
  _UseCase5State createState() => _UseCase5State();
}

class _UseCase5State extends State<UseCase5> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0), () {
      Timer(const Duration(seconds: 2, milliseconds: 50), () {
        Navigator.pop(context);
      });
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return Dialog(
              insetPadding:
                  EdgeInsets.symmetric(vertical: 210, horizontal: 100),
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                child: Center(child: CircularProgressIndicator()),
              ),
            );
          });
    });
    Timer(const Duration(seconds: 3), () {
      context.navigation.next();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Use Case 5'),
        ),
        body: const Center(child: Text('Loading Completed')));
  }
}
