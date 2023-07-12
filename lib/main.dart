import 'package:flutter/material.dart';
import 'package:count_app/banana_counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final controller = TextEditingController();

  var countNumber = 0;

  @override
  Widget build(BuildContext context) {
    hoge(){
      // print(controller.text);
      setState(() {
        countNumber++;
      });
      debugPrint(countNumber.toString());
    }

    final textFiled = TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "名前",
        hintText: "名前を入力してください",
      ),
    );




    final button = ElevatedButton(
      onPressed: (){
        hoge();
      },
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

          BananaCounter(
            number: countNumber,
          ),

          button,
          // textFiled
        ]
    );

    final con = Container(
      color: Colors.orange,
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

    return a;
  }

}


