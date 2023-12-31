// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignupApiScreen extends StatefulWidget {
  const SignupApiScreen({super.key});

  @override
  State<SignupApiScreen> createState() => _SignupApiScreenState();
}

class _SignupApiScreenState extends State<SignupApiScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signup(String email, String pass) async {
    var response = await http.post(Uri.parse("https://reqres.in/api/register"),
        body: {"email": email, "password": pass});

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      print("Signup successfully");
      print(data);
    } else {
      print("failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "password"),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  signup(emailController.text.toString(),
                      passwordController.text.toString());
                },
                child: const Text("Signup"))
          ],
        ),
      ),
    );
  }
}
