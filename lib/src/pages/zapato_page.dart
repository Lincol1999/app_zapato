import 'package:app_zapatos/src/helpers/helpers.dart';
import 'package:flutter/material.dart';

import 'package:app_zapatos/src/wingets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            texto: 'For You',
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Hero(
                      //necesita un tag (identificador unico)
                      tag: 'zapato-1',
                      child: ZapatoSizePreview()),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 180.0),
        ],
      ),
    );
  }
}
