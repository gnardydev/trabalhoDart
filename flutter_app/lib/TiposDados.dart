import 'package:flutter/material.dart';

class TiposDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Alocação de memoria, tudo no Dart é objeto

    //Function

    exibirMeuNome(){
      print("Gabriel");
    }

    String exibirMeuNome2(String nome){ //receber dados
      print("Gabriel");
    }

    Future<String> exibirMeuNome3()async{
      print("Gabriel"); // relacionar com async e await
    }

    //List
    List lista = []; // nao ha necessidade da ultilizaçao do new
    lista.add("gabriel");
    lista.add(3);

    var lista2 = []; // nao ha necessidade da ultilizaçao do new
    lista2.add("gabriel");
    lista2.add(3);

    List<int> lista3 = [];
    //lista3.add("gabriel"); // erro pois a lista é somente de int
    lista3.add(3);

    //Map
    //Parecido com List mas cada valor possui um index

    var nome_sobrenome = {
      'Gabriel' : 'Nardy',
      'Diogo' : 'Casal'
    };


    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de dados e sistemas de tipos"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text("int x = 1;", style: TextStyle(fontSize: 18),),
              Text("double x = 1.2;", style: TextStyle(fontSize: 18),),
              Text("num x = 3;", style: TextStyle(fontSize: 18),),
              Text("num x = 3.5;", style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 20,
              ),
              Text("String x = 'Explicando trabalho de LP';", style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 20,
              ),
              Text("Boolean = true;", style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 20,
              ),
              Text("dynamic = receber qualquer valor;", style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
