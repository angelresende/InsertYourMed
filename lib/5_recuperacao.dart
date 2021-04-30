import 'package:flutter/material.dart';

class PaginaRecuperacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8FAADC),
        centerTitle: true,
        title: Image.asset("assets/images/logo.PNG"), 
        //Habilitar o botão de voltar no AppBar
        automaticallyImplyLeading: true,
    ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Color(0xFF8FAADC),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(fontSize: 26, color: Colors.grey[800]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Por favor, informe o E-mail cadastrado para o  envio "+
                        "das instruções para recuperação de sua senha.",
                        style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, color: Colors.grey[100]),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                    SizedBox(
                        height: 20,
                      ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.grey[50], fontSize: 18,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                        ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: SizedBox.expand(
                          child: ElevatedButton(
                            child: Text(
                              "Enviar",
                              style: TextStyle(fontStyle: FontStyle.normal, color: Colors.white,fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

