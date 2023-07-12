import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {

  //バナナの数
  final int number;

  const BananaCounter({super.key , required this.number});

  @override
  Widget build(BuildContext context) {

    // バナナの写真
    final banana = Container(
      width:70,
      height:70,
      child: Image.asset(
        "assets/images/banana.png",
        fit: BoxFit.cover,
      )
    );

    // バナナの数を表示するテキスト
    final count = Text(
        number.toString(),
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 50,
        ),
    );

    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        banana,
        count,
      ],
    );

    final con = Container(
      width: 300, // 横幅
      height: 100, // 高さ
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black87, // 背景の色
        borderRadius: BorderRadius.circular(12), // 角を少し丸くする
      ),
      child: row,
    );

    return con;
  }
}
