import 'package:flutter/material.dart';

class ClassOneTwo extends StatelessWidget {
  const ClassOneTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("First app"),
        ),
        body: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: const Center(child: Text("Container 1")),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: const Text("data"),
            ),
          ],
        ));
  }
}


// LEC 1:
// •	Install flutter
// •	Creating first flutter project
// •	Understand vs code all things
// •	Install extensions
// •	Summing up what we have learned so far
// LEC 2:
// •	Stateless widget
// •	Hot reload and hot restart
// •	Understand widgets
// •	App bar widget
// •	Container widget
// •	Single child widgets
// •	Multi child widgets
// •	Row & column widgets
// Assignment
// •	Design UI using six containers
