import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class UseCase2 extends StatefulWidget {
  UseCase2([this.i]) : super();
  int? i;
  @override
  _UseCase2State createState() => _UseCase2State();
}

class _UseCase2State extends State<UseCase2> {
  int index = 0;

  late Widget child;

  @override
  Widget build(BuildContext context) {
    switch (widget.i) {
      case 0:
        child =
            tab('Screen A', const Icon(Icons.home), context.navigation.newb);
        break;
      case 1:
        child =
            tab('Screen B', const Icon(Icons.star), context.navigation.newa);

        break;
      case 2:
        child = SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.play_arrow),
                Text('Screen C'),
              ],
            ));

        break;
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Use Case 2'),
        ),
        body: child,
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Screen A',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Screen B'),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Screen C',
          )
        ],
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
          context.navigation.index(newIndex);
          context.navigation.index(newIndex);
        },
        currentIndex: widget.i ?? index);
  }

  Widget tab(
    String screen,
    Icon icon,
    void Function() newa,
  ) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextButton.icon(
            onPressed: () {
              print('h');
              newa();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black26),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            icon: icon,
            label: const Text('Screen D'),
          ),
          Text(screen),
        ],
      ),
    ));
  }
}
