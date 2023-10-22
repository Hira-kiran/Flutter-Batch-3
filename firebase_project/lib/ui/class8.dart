import 'package:flutter/material.dart';
import 'package:flutter_batch/class4&5.dart';

class ClassEight extends StatelessWidget {
  const ClassEight({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
            backgroundColor: const Color(0xff0A6752),
            title: const Text("Class 8"),
            bottom: const TabBar(indicatorColor: Color(0xff0A6752), tabs: [
              Tab(
                text: "Chats",
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: "Groups",
                icon: Icon(Icons.group),
              ),
              Tab(
                text: "Calls",
                icon: Icon(Icons.call),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              const ClassFourAndFive(),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action: SnackBarAction(label: "Undo", onPressed: () {}),
                        content:
                            const Text("Are you sure you want to delete")));
                  },
                  child: const Text("data")),
              const Text("Calls"),
            ],
          )),
    );
  }
}


// LEC 8:
// •	Tab bar widget
// •	Elevated Button
// •	Snack bar widget
