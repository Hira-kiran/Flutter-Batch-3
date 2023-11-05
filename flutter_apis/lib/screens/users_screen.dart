import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_apis/model/user_model.dart';
import 'package:http/http.dart' as http;

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<UsersModel> usersList = [];

  Future<List<UsersModel>> getUsersApi() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());
    print(data);

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        usersList.add(UsersModel.fromJson(i));
      }
    } else {
      return usersList;
    }
    return usersList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(label: "sks", child: const Text("Users API")),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getUsersApi(),
                builder: (contxt, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                        itemCount: usersList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                                child: Text(usersList[index].id.toString())),
                            title: Text(
                                usersList[index].address!.geo!.lat.toString()),
                            subtitle: Text(
                                usersList[index].address!.street.toString()),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}
