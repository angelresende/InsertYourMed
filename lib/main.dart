import 'package:app_insertyourmed/3_cadastro.dart';
import 'package:app_insertyourmed/2_login.dart';
import 'package:app_insertyourmed/1_inicial.dart';
import 'package:app_insertyourmed/4_listagem.dart';
import 'package:app_insertyourmed/5_recuperacao.dart';
import 'package:app_insertyourmed/6_sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ProBuscaMed',
    initialRoute: '/inicial',
    routes: {
      '/inicial': (context) => Inicial(),
      '/login': (context) => Paginalogin(),
      '/cadastro': (context) => PaginaCadastro(),
      '/sobre': (context) => PaginaSobre(),
      '/lista': (context) => PaginaLista(),
      '/recuperar': (context) => PaginaRecuperacao(),
    },
  ));
}
