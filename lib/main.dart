import 'package:flutter/material.dart';
import 'package:count_app/banana_counter.dart';

void main() {

  const col = Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      // Image.asset("assets/images/penguin.jpg"),
      // Image.network("https://flutter-image-network.web.app/inu.jpeg"),

      BananaCounter(
        number: 888,
      )
    ]
  );

  final con = Container(
    color: Colors.blue,
    width: 600,
    height: 600,
    padding: const EdgeInsets.all(10),
    child: col,
  );


  final a = MaterialApp(
    home: Scaffold(
      body:Center(
        child: con,
      )
    )
  );

  runApp(a);
}
