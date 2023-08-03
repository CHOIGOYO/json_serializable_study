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
    String json = '{"name":"choigoyo","email":"choigoyo.q7@gmail.com","created_time":"2023-08-03"}';
    Map<String, dynamic> userMap = jsonDecode(json);
    return Scaffold(
      body: Center(
        child: Text(' name : ${userMap['name']} \n email : ${userMap['email']} \n created_time : ${userMap['created_time']} \n '),
      ),
    );
  }
}
