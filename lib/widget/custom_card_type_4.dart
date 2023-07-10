import 'package:flutter/material.dart';

class CustomCardType4 extends StatelessWidget {
  const CustomCardType4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child:const Column(children: [
        Image(
          image: NetworkImage('https://acortar.link/peBHuj'),
        )
      ]),
    );
  }
}