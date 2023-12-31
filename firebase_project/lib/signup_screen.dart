import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: "Enter Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration:
                        const InputDecoration(hintText: "Enter Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Password";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    setState(() {
                      loading = true;
                    });
                    auth
                        .createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString())
                        .then((value) {
                      toastMsg("Signup Successfully");

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }).onError((error, stackTrace) {
                      setState(() {
                        loading = false;
                      });
                      toastMsg(error.toString());
                    });
                  }
                },
                child: loading == true
                    ? const CircularProgressIndicator()
                    : const Text("Signup"))
          ],
        ),
      ),
    );
  }

  void toastMsg(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 14.0);
  }
}
/* 
LEC 14:
•	Firebase
•	Creating project
•	Setting up project with firebase
LEC 15:
•	Sign up form with firebase
•	Install Packages (Firebase core, Firebase Auth)
•	Run commands ( flutter pub add firebase_core, flutterfire configure)
•	
LEC 16:
•	Login form with firebase
 */

// LEC 17:
// •	Add Validation
// •	Loading
// •	Commands (flutter clean, flutter pub get)
