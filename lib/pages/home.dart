
import 'package:flutter/material.dart';

import 'Menudrawer/PageFour.dart';
import 'Menudrawer/PageOne.dart';
import 'Menudrawer/PageThree.dart';
import 'Menudrawer/PageTwo.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pageview),
              title: Text('Página 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: Text('Página 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTwo()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('Página 3'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageThree()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text('Página 4'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageFour()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bem-vindo à Página Inicial!'),
      ),
    );
  }
}