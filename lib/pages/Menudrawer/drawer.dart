import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({super.key, required this.title2, required this.selectedIndex});
  String title2;
  int selectedIndex = 0;

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
   

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Rennan'),
            accountEmail: Text(
              'rennan@homtail.com',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              child: Text('D'),
            ),
          ),
          ListTile(
            title: const Text('Dados '),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _onSelectItem(0, 'Dados');
            },
          ),
          ListTile(
            title: Text('Chat '),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _onSelectItem(1, 'Chat');
            },
          ),
          ListTile(
            title: Text('Contatos '),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              _onSelectItem(2, 'Contato');
            },
          ),
        ],
      ),
    );
  }

  _onSelectItem(int index, String title3) {
    setState(() {
      widget.selectedIndex = index;
      widget.title2 = title3;
    });
    Navigator.of(context).pop();
  }
}
