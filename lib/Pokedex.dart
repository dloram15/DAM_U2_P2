import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dam_u2_practica2/mispokemones.dart';
import 'package:dam_u2_practica2/tipos.dart';
import 'package:dam_u2_practica2/lab.dart';

class Pokedex extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Pokedex();
  }
}
class _Pokedex extends State<Pokedex> {
  int _indice = 0;

  void _cambiarIndice(int indice) {
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    mispokemones(),
    tipos(),
    lab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/pokeball.png', width: 50),
            label: "Mis Pokemon", backgroundColor: Colors.blueGrey,),
          BottomNavigationBarItem(icon: Image.asset('assets/tipos.png', width: 50),
            label: "Tipos", backgroundColor: Colors.red,),
          BottomNavigationBarItem(icon: Image.asset('assets/lab.png', width: 50),
            label: "Laboratorio", backgroundColor: Colors.blue,),

        ],
        currentIndex: _indice,
        showUnselectedLabels: false,
        onTap: _cambiarIndice,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        iconSize: 30,

      ),
    );
  }

}