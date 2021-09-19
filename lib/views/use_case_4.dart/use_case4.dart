import 'package:flutter/material.dart';

class UseCase4 extends StatefulWidget {
  const UseCase4({Key? key}) : super(key: key);

  @override
  _UseCase4State createState() => _UseCase4State();
}

class _UseCase4State extends State<UseCase4> {
  int index = 0;

  Color c = Colors.red;

  String image =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/800px-A_small_cup_of_coffee.JPG';

  Color iconColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.network(image, fit: BoxFit.cover),
              padding: EdgeInsets.all(0),
            ),
            Container(
              child: Column(children: <Widget>[
                ListTile(
                    leading: Text('Button 1'),
                    onTap: () {
                      setState(() {
                        iconColor = Colors.black;
                        index = 1;
                        c = Colors.red;
                        image =
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/800px-A_small_cup_of_coffee.JPG';
                      });
                    }),
                ListTile(
                    leading: Text('Button 2'),
                    onTap: () {
                      setState(() {
                        iconColor = Colors.brown;

                        index = 2;
                        c = Colors.cyan;
                        image =
                            'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-2000w,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg';
                      });
                    }),
                ListTile(
                    leading: Text('Button 3'),
                    onTap: () {
                      setState(() {
                        iconColor = Colors.blue.shade800;

                        index = 3;
                        c = Colors.amber;
                        image =
                            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F08%2F20%2FGettyImages-1165807395-2000.jpg';
                      });
                    }),
              ]),
            )
          ],
        ),
      ),
      appBar: AppBar(flexibleSpace: Image.network(image, fit: BoxFit.cover)),
      body: Container(),
      bottomNavigationBar: body(c, index, iconColor),
    );
  }

  Widget body(Color c, int i, Color iconColor) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: c,
      selectedItemColor: iconColor,
      unselectedItemColor: iconColor,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          label: 'b$i/t1',
          icon: Icon(Icons.music_note),
        ),
        BottomNavigationBarItem(
          label: 'b$i/t2',
          icon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          label: 'b$i/t3',
          icon: Icon(Icons.library_books),
        ),
      ],
    );
  }
}
