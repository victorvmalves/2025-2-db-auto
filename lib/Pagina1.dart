import 'package:dbauto/auto.dart';
import 'package:dbauto/autoDAO.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  final _DAOauto = autoDAO();
  Auto? _autoAtual;
  final _controlMarca = TextEditingController();
  final _controlCor = TextEditingController();
  List<Auto> _listauto = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP Banco de Dados Auto"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controlMarca,
          ),
          TextField(
            controller: _controlCor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child:
                ElevatedButton(onPressed: () {
                  //adicionar ou editar
                }, child: Text("Salvar/Editar")),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: _listauto.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text("${_listauto[index].marca}"),
                      subtitle: Text("${_listauto[index].cor}"),
                      trailing: IconButton(
                          onPressed: () {
                            //para apagar
                          }, icon: Icon(Icons.delete)
                          ),
                      onTap: () {
                        //carregar campos para editar
                      },
                    );
                  }))
        ],
      ),
    );
  }
}
