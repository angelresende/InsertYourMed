import 'package:flutter/material.dart';

//
// SOBRE O APLICATIVO
//
class PaginaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8FAADC),
        centerTitle: true,
        title: Image.asset("assets/images/logo.PNG"),
        //desabilitar o botão de voltar no AppBar
        automaticallyImplyLeading: false,
    ),
    backgroundColor: Color(0xFF8FAADC),
     body: Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
             child: Column(
              children: [
                Container(
                  color: Color(0xFF8FAADC),
                  height: 50,
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text("Sobre o aplicativo...",
                                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey[50])),
                  ),
                ),
                /* Container(
                    height: 40,
                      child: Align(
                      alignment: Alignment.bottomLeft,
                        child: Text("Sobre o projeto:  Projeto desenvolvido para a disciplina de "+ 
                        "PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS.",
                        style: TextStyle(fontSize: 12, color: Colors.grey[50])),
                    )),
                  Container(
                    height: 40,
                      child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("\nObjetivo: O aplicativo se destina a inclusão de uma lista de medicamentos, conforme "+
                        "necessidade do usuário",
                        style: TextStyle(fontSize: 12, color: Colors.grey[50])),
                    )),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("\nTecnologias Utilizadas:\n"
                                    "--> Linguagem: Dart;\n"
                                    "--> Framework: Flutter;", 
                        style: TextStyle(fontSize: 12, color: Colors.grey[50])),
                        )),              
                   Container(
                    child: Column(
                    children: [
                      UserAccountsDrawerHeader(
                        accountName: Text('Desenvolvido por: Angélica Resende Araújo',style: TextStyle(fontSize: 12, color: Colors.grey[50])), 
                        accountEmail: Text('Github: https://github.com/angelresende/ProBuscaMed', style: TextStyle(fontSize: 12, color: Colors.grey[50])),
                        currentAccountPicture: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/dev.jpg")),
                      )])),
                  SizedBox(height: 20),*/
              
          Expanded(
            child: Container(
              color: Color(0xFF8FAADC),
              child: ListView(
                  children: <Widget>[
                   Container(
                      width: 200,
                      height: 300,
                      margin: EdgeInsets.all(20),
                      color: Color(0xFF8FAADC),
                      child: Row(children: [
                        SizedBox(
                          width: 100,
                          child: Center(
                            child: Image.asset("assets/images/dev.PNG"),)
                        ),
                        Expanded(
                          child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Sobre o projeto: Projeto desenvolvido para a disciplina de PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS.\n"+
                                "\nObjetivo: O aplicativo se destina a inclusão de uma lista de medicamentos, conforme necessidade do usuário.\n"+
                                "\nTecnologias Utilizadas:"+ 
                                "\nLinguagem: Dart;"+
                                "\nFramework: Flutter;\n"+
                                "\nDesenvolvido por: Angélica Resende Araújo"+
                                "\nhttps://github.com/angelresende/ProBuscaMed",
                                style: TextStyle(fontSize: 12, color: Colors.grey[50])),
                              ]),
                        )),
                      ]),
              )]))),
              Container(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: SizedBox(
                          width: 50,
                          height: 30,
                          child: Center(child: Text('Início'))),
                        onPressed: () {
                        Navigator.pop(context);
                        },
                      ),
                        ElevatedButton(
                          child: SizedBox(
                          width: 50,
                          height: 30,
                            child: Center(child: Text('Login'))),
                              onPressed: () {
                              Navigator.pushNamed(context, '/login');
                              },
              )])]))])));         
  }
}