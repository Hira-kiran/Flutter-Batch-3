// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_batch/class4&5.dart';

import 'class1_2.dart';

class ClassSixAndSeven extends StatefulWidget {
  const ClassSixAndSeven({super.key});

  @override
  State<ClassSixAndSeven> createState() => _ClassSixAndSevenState();
}

class _ClassSixAndSevenState extends State<ClassSixAndSeven> {
  int index = 0;
  List screens = [
    const ClassOneTwo(),
    const ClassFourAndFive(),
    const ClassSixAndSeven(),
    const ClassFourAndFive(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                  backgroundImage: AssetImage("images/flutter logo.png"),
                  child: Text("data"),
                ),
                accountName: Text("Flutter"),
                accountEmail: Text("flutter123@gmail.com")),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (conext) => const ClassOneTwo()));
              },
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              subtitle: const Text("data"),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (conext) => const ClassFourAndFive()));
              },
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              subtitle: const Text("data"),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const Divider(
              color: Colors.pink,
              indent: 20,
              endIndent: 20,
              thickness: 2,
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              subtitle: Text("data"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Class 6 & 7"),
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          backgroundColor: Colors.purple,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                ),
                label: "Logout"),
          ]),
    );
  }
}


// LEC 6:
// •	Drawer
// •	Divider
// •	Routing
// LEC 7:
// •	Bottom navigation
// •	Sizebox widget
