import 'package:flutter/cupertino.dart ';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/youtube/biblioteca.dart';
import 'package:flutter_estudo/youtube/em_alta.dart';
import 'package:flutter_estudo/youtube/inicio.dart';
import 'package:flutter_estudo/youtube/inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceNavegacao = 0;
  List<Widget> _telas = [
    Inicio(),
    EmAlta(),
    Inscricao(),
    Biblioteca(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        leading: Transform.scale(scale: 2.5, child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset("images/youtube/logo.png"),
        )),
        actions: [
          // ElevatedButton.icon(
          //     onPressed: (){},
          //     icon: Icon(Icons.search_outlined),
          //     label: Text("Pesquisar")
          // )
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){}),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}),
        ],
      ),
      body: Container(
        child: _telas[_indiceNavegacao],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceNavegacao,
        onTap: (indice){
          setState(() {
            _indiceNavegacao = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Em alta",
              icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
              label: "Inscrções",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(Icons.home)
          ),
        ],
      ),
    );
  }
}
