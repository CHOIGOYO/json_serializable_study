import 'dart:convert';

import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JSonTest(),
    );
  }
}


class JSonTest extends StatelessWidget {
  const JSonTest({super.key});

  @override
  Widget build(BuildContext context) {
    String json = '{"name":"최고요","email":"choigoyo.q7@gmail.com","created_time":20230000}';
    Map<String, dynamic> userMap = jsonDecode(json);
    var user = User.fromJson(userMap);
    return Scaffold(
      body: Center(
        child: Text(' name : ${user.name} \n email : ${user.email} \n created_time : ${user.createdTime} \n '),
      ),
    );
  }
}

// model
class User{
  final String name;
  final String email;
  final int createdTime;

  User(this.name, this.email, this.createdTime);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        createdTime = json['created_time'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'created_time': createdTime,
  };

}
