import 'package:flutter/material.dart';

//
// PÁGINA DE CADASTRO
//

class PaginaCadastro extends StatefulWidget {
  @override
  _CadastroUsuarios createState() => _CadastroUsuarios();
}

class Cadastrar {
  final String nome;
  final String email;
  final String senha;

  Cadastrar(this.nome, this.email, this.senha);
}

class _CadastroUsuarios extends State<PaginaCadastro> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var txtNome, txtEmail, txtSenha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        /*appBar: AppBar(
          backgroundColor: Color(0xFF8FAADC),
          centerTitle: true,
          title: Image.asset("assets/images/logo.PNG"),
          //desabilitar o botão de voltar no AppBar
          automaticallyImplyLeading: false,
        ),*/
        body: Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            color: Color(0xFF8FAADC),
            child: ListView(children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Nome",
                  hintStyle: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                onChanged: (value) {
                  txtNome = value.toString();
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "E-mail",
                  hintStyle: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                onChanged: (value) {
                  txtEmail = value.toString();
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
                  hintStyle: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                onChanged: (value) {
                  txtSenha = value.toString();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: SizedBox(
                      width: 150,
                      height: 30,
                      child: Center(child: Text('Cadastrar'))),
                  onPressed: () {
                    setState(() {
                      if (txtNome == null ||
                          txtEmail == null ||
                          txtSenha == null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Dados inválidos!'),
                          duration: Duration(seconds: 2),
                        ));
                      } else {
                        var cadastrar = Cadastrar(txtNome, txtEmail, txtSenha);

                        Navigator.pushNamed(context, '/login',
                            arguments: cadastrar);

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Cadastro efetuado com sucesso!'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    });
                  })
            ])));
  }
}
