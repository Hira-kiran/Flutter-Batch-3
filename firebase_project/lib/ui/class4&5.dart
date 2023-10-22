// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClassFourAndFive extends StatelessWidget {
  const ClassFourAndFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 4 & 5"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // **************** LEC 4: ****************
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 50),
            child: Image.network(
              "data:image/png;base64,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",
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "images/flutter logo.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
          //**************  LEC 5:	***************
          const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.amber,
              backgroundImage: AssetImage(
                "images/flutter logo.png",
              ),
              child: Text("")),

          const ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.amber,
                /*   backgroundImage: const AssetImage(
                  "images/logo.png",
                ), */
                child: Text("H")),
            title: Text("User name"),
            subtitle: Text("Hi there!"),
            trailing: Text("2:00 pm"),
          ),
        ]),
      ),
    );
  }
}


// LEC 4:
// •	Add Network & asset image
// •	Gesture detector ontap onpress function
// •	Inkwell widget
// •	Padding widget

// LEC 5:	
// •	Circular avatar widget
// •	List tile widget
// •	SingleChildScollView
