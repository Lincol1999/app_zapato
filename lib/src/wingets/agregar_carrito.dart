import 'package:flutter/material.dart';

import 'package:app_zapatos/src/wingets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  final double monto;

  const AgregarCarritoBoton({this.monto});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              '\$$monto',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Spacer(),
            BotonNaranja(
              texto: 'Add to card',
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
