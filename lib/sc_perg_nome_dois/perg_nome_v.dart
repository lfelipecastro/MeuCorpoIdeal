import 'package:flutter/material.dart';
import 'package:meu_corpo_ideal/main.dart';
import 'package:meu_corpo_ideal/sc_perg_nome_dois/perg_nome_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela 2',
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
      home: const PergNome(title: 'Tela 2'),
    );
  }
}

class PergNome extends StatefulWidget {
  const PergNome({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PergNome> createState() => _PergNome();
}

class _PergNome extends State<PergNome> {
  final nomeController = TextEditingController();
  String text = "";
  
  void _setText(TextEditingController a) {
    setState(() {
      text = a.text;
      CadastraNome(text);
    });
  }
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
            Text("Qual é o seu nome?",
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(height: 25), //Serve como espaçamento entre os componentes
            Center( //Componentes ficam centralizado, em sentido horizontal
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: nomeController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(3, 103, 166, 1.0),
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      hintText: "Ex: Henrique Carvalho",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              //TextField sem estar pressionado fica dessa cor as bordas
                              BorderSide(color: Color.fromRGBO(3, 103, 166, 1.0)),
                              //As bordas do TextField ficam redondas
                              borderRadius: BorderRadius.circular(60)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              //TextField sem estar pressionado fica dessa cor as bordas
                              BorderSide(color: Color.fromRGBO(2, 48, 89, 1.0)),
                              //As bordas do TextField ficam redondas
                              borderRadius: BorderRadius.circular(60)),
                      labelText: 'Digite aqui',
                    )),
            )),
            SizedBox(height: 25), //Serve como espaçamento entre os componentes
            ElevatedButton(
              onPressed: () => _setText(nomeController),
              child: Text('Prosseguir')),
              ],

        ),
    );
  }
}
