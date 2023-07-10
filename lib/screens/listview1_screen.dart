import 'package:fl_components_student/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = const [
    'Slipknot',
    'Korn',
    'Limb Bizkit',
    'Audioslave',
    'System of a down',
    'Mudayve',
    'CDK'
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Version 1'),
        ),
        body: ListView(
          children: [
            ...opciones
                .map((e) => ListTile(
                      leading: const Icon(Icons.ac_unit_outlined,
                          color: AppTheme.primary),
                      title: Text(e),
                      trailing: const Icon(
                        Icons.arrow_circle_right,
                         color: AppTheme.primary,
                      ),
                    ))
                .toList(),
          ],
        ));
  }
}