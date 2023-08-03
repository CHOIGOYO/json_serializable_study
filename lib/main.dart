import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_serializable_study/user.dart';

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
    String json = '{"name":"최고요","email":"choigoyo.q7@gmail.com","created_time":20230000,"address":{"street":"춘의동","city":"부천시"}}';
    Map<String, dynamic> userMap = jsonDecode(json);
    var user = User.fromJson(userMap);
    var tojson = user.toJson();
    return Scaffold(
      body: Center(
        child: Text(' name : ${user.name} \n email : ${user.email} \n created_time : ${user.createdTime} \n 동 : ${user.address.street} \n 시 : ${user.address.city} \n to json Data : ${tojson} \n '),
      ),
    );
  }
}

