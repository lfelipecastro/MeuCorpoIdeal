const String DATABASE_NAME = "meu_peso_ideal.db";
const String TABLE_NAME_U = "usuario";
const String TABLE_NAME_M = "medidas";
const String CREATE_USUARIOS_TABLE_SCRIPT = "CREATE TABLE usuario(id INTEGER PRIMARY KEY,"+ 
  "nome TEXT, sexo TEXT, idade TEXT, peso TEXT, altura TEXT, ativ_trab TEXT, exer_sema TEXT,"+
  "gast_calo TEXT, taxa_meta TEXT)";
const String CREATE_MEDIDAS_TABLE_SCRIPT = "CREATE TABLE medidas(brac_esqu TEXT PRIMARY KEY,"+
  "brac_dire TEXT, ante_esqu TEXT, ante_dire TEXT, torax TEXT, cint TEXT, quad TEXT,"+ 
  "coxa_esqu TEXT, coxa_dire TEXT, pant_esqu TEXT, pant_dire TEXT)";