import 'package:flutter/material.dart';

class Class9And10 extends StatefulWidget {
  const Class9And10({super.key});

  @override
  State<Class9And10> createState() => _Class9And10State();
}

class _Class9And10State extends State<Class9And10> {
  bool checkbox = true;
  bool checkbox1 = true;
  bool switchh = false;

  String pk = "pk";
  String lhr = "lhr";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Class 9 and 10"),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.amber,
                        title: const Text("flutter"),
                        content: const Text("this is dialogue box"),
                        actions: [
                          TextButton(
                              onPressed: () {}, child: const Text("yes")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("no")),
                        ],
                      );
                    });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: checkbox,
                    onChanged: (v) {
                      setState(() {
                        checkbox = v!;
                      });
                    }),
                const Text("data"),
              ],
            ),
            Switch(
                activeColor: Colors.amber,
                value: switchh,
                onChanged: (v) {
                  setState(() {
                    switchh = v;
                  });
                }),
            Radio(
                value: "pk",
                groupValue: pk,
                onChanged: (v) {
                  setState(() {
                    pk = v.toString();
                  });
                }),
            Radio(
                value: "lhr",
                groupValue: pk,
                onChanged: (v) {
                  setState(() {
                    pk = v.toString();
                  });
                }),
          ],
        ),
      ),
    );
  }
} /* 


/// ************* card **************

    Card(
            elevation: 50,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
          ), */
/// ************* stack **************

// Stack(
//           children: [
//             Container(
//               height: 200,
//               width: 200,
//               color: Colors.amber,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.pink,
//             ),
//             Container(
//               height: 50,
//               width: 50,
//               color: Colors.purple,
//             )
//           ],
//         )

// LEC 9:
// •	Stack widget
// •	Card Widget
// •	Safe area
// •	List view widget

// LEC 10:
// •	Checkbox
// •	Switch button
// •	Radio Button
// •	Dialogue
