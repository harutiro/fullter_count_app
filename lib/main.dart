import 'package:flutter/material.dart';

void main() {

  final col = Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      Image.asset("assets/images/penguin.jpg"),
      Image.network("https://flutter-image-network.web.app/inu.jpeg"),
    ]
  );


  final a = MaterialApp(
    home: Scaffold(
      body:Center(
        child: col,
      )
    )
  );

  runApp(a);
}
