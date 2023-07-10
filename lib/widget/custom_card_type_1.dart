
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      // shadowColor: AppTheme.primary,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.car_crash_rounded),
            title: Text('Titulo de la Tarjeta'),
            subtitle: Text('Este es un Subtitulo de la Tarjeta creada'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {},child: const Text('Procesar'),),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}