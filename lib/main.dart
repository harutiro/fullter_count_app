import 'package:flutter/material.dart';
import 'package:count_app/banana_counter.dart';

void main() {

  hoge(){
    debugPrint("これから通信を始めます");
    debugPrint("通信中");
    debugPrint("通信が終わりました");
  }




  final button = ElevatedButton(
      onPressed: hoge(),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      child: const Text("ボタン"),
  );



  final col = Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      // Image.asset("assets/images/penguin.jpg"),
      // Image.network("https://flutter-image-network.web.app/inu.jpeg"),

      // BananaCounter(
      //   number: 888,
      // )

      button
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
