import 'package:fl_components_student/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {
  const CustomCardType3({
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
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              leading: Icon(
                Icons.car_crash_rounded,
                size: 50,
                color: AppTheme.primary,
              ),
              title: Text(
                'Titulo de la Tarjeta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Este es un Texto de Ejemplo'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Procesar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
