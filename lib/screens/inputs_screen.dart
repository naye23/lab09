import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs AND Forms')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const Text('Nombre'),
                TextFormField(
                  decoration: const InputDecoration(
                    helperText: 'Solo Ingresar Letras',
                  
                    counterText: "3 Caracteres",
                  
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                      ),
                    ),
                  ),
                  autofocus: true,
                  
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    // print('valor: $value');
                  },
                  validator: (value) {
                    if (value == null) return 'Este campo es necesario';
                    return value.length < 3
                        ? 'Ingresar un minimo de 3 letras aqui'
                        : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                )
              ],
            ),
          ),
        ));
  }
}