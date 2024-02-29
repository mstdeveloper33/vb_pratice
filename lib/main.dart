import 'package:flutter/material.dart';
import 'package:pratice_vb/reqres_resources/view/reqre_view.dart';

//import 'package:pratice_vb/service/service_learn_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'aaa',
      
      home:ReqResView (),
    );
  }
}


