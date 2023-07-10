import 'package:flutter/material.dart';
import '../widget/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: const [
            CustomCardType3(),
            SizedBox(height: 10),
            CustomCardType4(),
            SizedBox(height: 10),
            CustomCardType5(
                imagenURL:
                    'https://acortar.link/EmPBgu'),
            SizedBox(height: 10),
            CustomCardType5(
                descripcion: 'Batman VS Superman',
                imagenURL:
                    'https://acortar.link/jvXnOs'),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}