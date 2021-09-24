import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class UseCase5 extends StatefulWidget {
  const UseCase5({Key? key}) : super(key: key);

  @override
  _UseCase5State createState() => _UseCase5State();
}

class _UseCase5State extends State<UseCase5> {
  String value = '';

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      context.navigation.next();
      setState(() {
        value = '1';
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Use Case 5'),
        ),
        body: Center(
            child: value.isEmpty
                ? CircularProgressIndicator()
                : Text('Loading Completed')));
  }
}
