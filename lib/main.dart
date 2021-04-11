import 'package:app_zapatos/src/models/zapato_models.dart';
import 'package:flutter/material.dart';

import 'package:app_zapatos/src/pages/zapato_page.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ZapatoModel(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: ZapatoPage());
  }
}
