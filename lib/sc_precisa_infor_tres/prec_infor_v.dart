import 'package:flutter/material.dart';
import 'package:meu_corpo_ideal/main.dart';

import '../sc_form_quatro/form_v.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela 3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PrecInfor(title: 'Tela 3'),
    );
  }
}

class PrecInfor extends StatefulWidget {
  const PrecInfor({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PrecInfor> createState() => _PrecInfor();
}

class _PrecInfor extends State<PrecInfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(225, 235, 249, 1.0), //Muda cor de fundo da tela

      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        mainAxisAlignment: MainAxisAlignment
            .center, //Os componentes seguintes ficam no centro da tela, em sentido vertical

        children: [
          Text("Bem vindo, @nome!",
              style: TextStyle(
                fontSize: 20.0,
              )),
          Text("Para calcular o seu gasto calórico vamos precisar de algumas informações!",
              style: TextStyle(
                fontSize: 20.0,
              )),
          ElevatedButton(
              onPressed: () => FormTela(title:'Tela 4 - Formulario'),
              child: Text('Prosseguir')),
        ],
      ),
    );
  }
}
