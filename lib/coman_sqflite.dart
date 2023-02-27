import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:meu_corpo_ideal/info_sqflite.dart';

class Sqflite_u{
  int id = 0;
  String nome = "", sexo = "", idade = "", peso = "", altura = "", 
  ativ_trab = "", exer_sema = "", gast_calo = "", taxa_meta = "";

Sqflite_u(String nome, String sexo, String idade, String peso, String altura, 
  String ativ_trab, String exer_sema, String gast_calo, String taxa_meta){
  this.nome;
  this.sexo;
  this.idade;
  this.peso;
  this.altura;
  this.ativ_trab;
  this.exer_sema;
  this.gast_calo;
  this.taxa_meta;
}

Map<String, dynamic> toMap(){
  return{
    'id': id,
    'nome': nome,
    'sexo': sexo,
    'idade': idade,
    'peso': peso,
    'altura': altura,
    'ativ_trab': ativ_trab,
    'exer_sema': exer_sema,
    'gast_calo': gast_calo,
    'taxa_meta': taxa_meta
  };
}

Map<dynamic, String> fromMap(){
  return{
    id: 'id',
    nome: 'nome',
    sexo: 'sexo',
    idade: 'idade',
    peso: 'peso',
    altura: 'altura',
    ativ_trab: 'ativ_trab',
    exer_sema: 'exer_sema',
    gast_calo: 'gast_calo',
    taxa_meta: 'taxa_meta'
  };
}

Future<Database> _getDatabase() async {
  return openDatabase(
    join(await getDatabasesPath(), DATABASE_NAME),
    onCreate: (db, version) async {
      return await db.execute(CREATE_USUARIOS_TABLE_SCRIPT);
      //return db.execute(CREATE_MEDIDAS_TABLE_SCRIPT);
    },
    version: 1,
  );
}

Future create() async {
    try {
      final Database db = await _getDatabase();

      await db.insert(
        TABLE_NAME_U,
        toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (ex) {
        print(ex);
      return;
    }
  }
}

class Sqflite_m{
  
}