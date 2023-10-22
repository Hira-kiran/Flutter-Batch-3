import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:readmore/readmore.dart';

import 'class11_12.dart';

class Class13And14 extends StatefulWidget {
  const Class13And14({super.key});

  @override
  State<Class13And14> createState() => _Class13And14State();
}

class _Class13And14State extends State<Class13And14> {
  // *************** Splash Screen **************
  /*  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Class11And12()));
    });
  } */
// ************  Introduction screen ****************
  List<PageViewModel> pagesList = [
    PageViewModel(
        titleWidget: const Text("Screen1"),
        body: "Flutter",
        image: const CircleAvatar()),
    PageViewModel(
        title: "Screen 2", body: "Flutter", image: const CircleAvatar()),
    PageViewModel(
        title: "Screen 3", body: "Flutter", image: const CircleAvatar())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Class 13 & 14",
            style: GoogleFonts.lato(
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
        body: IntroductionScreen(
          pages: pagesList,
          dotsDecorator: const DotsDecorator(activeColor: Colors.amber),
          onDone: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Class11And12()));
          },
          done: const Text("Done"),
          onSkip: () {},
          next: const Text("Next"),
        ));
  }
}


// LEC 13:
// •	Splash screen
// •	Making introduction screen
// LEC 14:
// •	Read more 
// •	Commands


// •*****************	Read more  *****************
// const ReadMoreText(
//             "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
//             trimCollapsedText: "Show more",
//             trimExpandedText: "Show less",
//             trimLines: 2,
//             trimMode: TrimMode.Line,
//             moreStyle: TextStyle(fontSize: 14, color: Colors.amber),
//             lessStyle: TextStyle(fontSize: 14, color: Colors.amber),
//           )