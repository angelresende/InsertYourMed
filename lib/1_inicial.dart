import 'package:flutter/material.dart';

//
// MENU PRINCIPAL
//
class Inicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container( 
          color: Color(0xFF8FAADC),
          child: ListView(
          children: <Widget>[
            SizedBox(
              width: 300,
              height: 128,
              child: Image.asset("assets/images/medicamentos.PNG"),
            ),   
        Container(  
          color: Color(0xFF8FAADC),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(30),
          alignment: Alignment.topCenter,
          child: Text(
              "Faça sua lista de medicamentos...",
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey[50]))),
         Container(
                child: Column(children: [
         ElevatedButton(
            child: Text('Entrar'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          SizedBox(
            height: 20,
            ),
          ElevatedButton(
            child: Text('Sobre o aplicativo'),
            onPressed: () {
              Navigator.pushNamed(context, '/sobre');
            },
          )])),
          ],
        ),
      ),
    );
  }
}