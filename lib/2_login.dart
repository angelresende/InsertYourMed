import 'package:app_insertyourmed/3_cadastro.dart';
import 'package:flutter/material.dart';

//
// PÁGINA DE LOGIN
//
class Paginalogin extends StatefulWidget {
  @override
  _PaginaloginState createState() => _PaginaloginState();
}

class Login {
  final String loginEmail;
  final String loginSenha;
  Login(this.loginEmail, this.loginSenha);
}

class BcoDados {
  final String nome;
  BcoDados(this.nome);
}

class _PaginaloginState extends State<Paginalogin> {
  var emailLogin;
  var senhaLogin;
  var validarLogin = 1;

  @override
  Widget build(BuildContext context) {
    final Cadastrar cadastrar = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8FAADC),
          centerTitle: true,
          title: Image.asset("assets/images/logo.PNG"),
          //desabilitar o botão de voltar no AppBar
          automaticallyImplyLeading: false,
        ),
        body: Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            color: Color(0xFF8FAADC),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/images/fotoLogin.PNG"),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.grey[50], fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                  onChanged: (value) {
                    emailLogin = value.toString();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Senha",
                    hintStyle: TextStyle(color: Colors.grey[50], fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                  onChanged: (value) {
                    senhaLogin = value.toString();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(children: [
                    ElevatedButton(
                      child: SizedBox(
                          width: 150,
                          height: 30,
                          child: Center(child: Text('Login'))),
                      onPressed: () {
                        setState(() {
                          if (emailLogin == null || senhaLogin == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Insira seus dados!'),
                              duration: Duration(seconds: 3),
                            ));
                          } else {
                            if (validarLogin == 1) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content:
                                    Text('Por gentileza, efetue seu cadastro :)'),
                                duration: Duration(seconds: 3),
                              ));
                            } else {
                              var login = Login(emailLogin, senhaLogin);
                              if (cadastrar.email == login.loginEmail  && cadastrar.senha == login.loginSenha) {
                                    var bcodados = BcoDados(cadastrar.nome);
                                  Navigator.pushNamed(context, '/lista', arguments: bcodados);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Senha ou e-mail incorretos.'),
                                  duration: Duration(seconds: 3),
                                ));
                              }
                            }
                          }
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            child: SizedBox(
                                width: 150,
                                height: 30,
                                child:
                                    Center(child: Text('Não sou cadastrado'))),
                            onPressed: () {
                              Navigator.pushNamed(context, '/cadastro');
                            },
                          ),
                          ElevatedButton(
                            child: SizedBox(
                                width: 150,
                                height: 30,
                                child:
                                    Center(child: Text('Esqueceu a senha?'))),
                            onPressed: () {
                              Navigator.pushNamed(context, '/recuperar');
                            },
                          )
                        ])
                  ]),
                )
              ],
            )));
  }
}
