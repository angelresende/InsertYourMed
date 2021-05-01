import 'package:flutter/material.dart';

//
// PÁGINA DE LISTAGEM DOS MEDICAMENTOS
//
class PaginaLista extends StatefulWidget {
  @override
  _ListPaginaListaState createState() => _ListPaginaListaState();
}

class _ListPaginaListaState extends State<PaginaLista> {
  var medicamentos = [];
  var txtmedicamentos = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medicamentos'),
        backgroundColor: Color(0xFF8FAADC),
        //desabilitar o botão de voltar no AppBar
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFF8FAADC),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Text("Olá Maria insira sua lista de medicamentos...",
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[50])))),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: txtmedicamentos,
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[50]),
                    decoration: InputDecoration(
                      labelText: 'Adicione seu medicamento',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      if (txtmedicamentos.text.isNotEmpty) {
                        medicamentos.add(txtmedicamentos.text);
                        txtmedicamentos.clear();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Medicamento adicionado a lista com sucesso!'),
                          duration: Duration(seconds: 3),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Adicione um medicamento.'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                //Aparência do item da lista
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      medicamentos[index],
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[50]),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          medicamentos.removeAt(index);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Medicamento removido!'),
                            duration: Duration(seconds: 3),
                          ));
                        });
                      },
                    ),
                  );
                },

                //Aparência do divisor
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.blue[900],
                    thickness: 1,
                  );
                },

                //total de itens da lista
                itemCount: medicamentos.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
