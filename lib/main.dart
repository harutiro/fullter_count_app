import 'package:flutter/material.dart';

void main() {

  const col = Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      Text("レモン"),
      Text("みかん"),
      Text("りんご"),
  ]);


  const a = MaterialApp(
    home: Scaffold(
      body:Center(
        child: col,
      )
    )
  );

  runApp(a);
}
