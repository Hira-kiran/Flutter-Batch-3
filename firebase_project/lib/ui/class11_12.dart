import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Class11And12 extends StatelessWidget {
  const Class11And12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Class 11 & 12",
          style: GoogleFonts.lato(
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          showCountryPicker(
              countryListTheme: const CountryListThemeData(
                  flagSize: 50, backgroundColor: Colors.amber),
              context: context,
              onSelect: (v) {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// LEC 11:
// •	Flutter logo
// •	Floating Action Button
// •	Grid view builder

// LEC 12:
// •	Understanding pub.dev
// •	How we can use packages on pub.dev
// •	Country picker
// •	Google Font


// const FlutterLogo(
//           size: 200,
//           style: FlutterLogoStyle.stacked,
//           textColor: Colors.blue,
//         ),
//         FloatingActionButton(
//           backgroundColor: Colors.purple,
//           onPressed: () {},
//           child: const Icon(Icons.add),
//         ),


// ********************** Grid view *********************
//  GridView.builder(
//           itemCount: 5,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
//           itemBuilder: (context, index) {
//             return Container(
//               color: Colors.amber,
//               child: const Text("container"),
//             );
//           }),