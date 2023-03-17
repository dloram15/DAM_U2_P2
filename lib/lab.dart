import 'package:flutter/material.dart';

enum memSex {m, f}

class lab extends StatefulWidget {
  const lab({Key? key}) : super(key: key);

  @override
  State<lab> createState() => _labState();
}

class _labState extends State<lab> {
  _labState(){
    _selectedValTipo = _listaTipo[0];
    _selectedValAtaque = _listaAtaque[0];
  }

  memSex _status = memSex.m;
  final _listaTipo = ["Seleccionar opción","Fuego", "Agua", "Tierra", "Viento"];
  final _listaAtaque = [
    "Seleccionar opción",
    "Pulso Primigenio",
    "Golpe Umbrío",
    "Resplandor",
    "Picadura",
    "Garra Metal",
    "Premonición",
    "Terremoto",
    "Sofoco",
  ];
  String? _selectedValTipo = "Fuego";
  String? _selectedValAtaque = "Pulso Primigenio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Image.asset(
            'assets/logo.png',
            width: 280,
          ),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.all(30), children: [
          Center(
              child: Text(
            "LABORATORIO POKÉMON",
            style: TextStyle(
                fontSize: 29,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          )),
          SizedBox(height: 30),
          Center(
              child: Text(
            "Elige las características que quieras en tu Pokémon",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 30),
          TextField(decoration: InputDecoration(icon: Icon(Icons.drive_file_rename_outline, color: Colors.yellow.shade900,),labelText:"¿Cómo se llama tu nuevo Pokémon?",)),
          SizedBox(height: 10),
          Center(
              child: Text(
                "Elige el sexo de tu Pokémon",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10),
          //Row sexo del pokemon
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: RadioListTile(
                  title: Text ("Masculino",style: TextStyle(fontSize: 8)),  value: memSex.m, groupValue: _status, onChanged: (memSex? valor){
                setState(() {
                  _status = valor!;
                });
              }),),
              Expanded(child: RadioListTile(
                  title: Text ("Femenino",style: TextStyle(fontSize: 8)), value: memSex.f, groupValue: _status, onChanged: (memSex? valor){
                setState(() {
                  _status = valor!;
                });
              }),),
            ],
          ),
          SizedBox(height: 10),
          //DropdownButton Tipo de Pokemon
          DropdownButtonFormField(
            value: _selectedValTipo,
            items: _listaTipo
                .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                _selectedValTipo = val as String;
              });
            },
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.yellow,
            ),
            dropdownColor: Colors.yellow.shade200,
            decoration: InputDecoration(
                labelText: "Tipo de Pokémon",
                prefixIcon: Icon(
                  Icons.pets,
                  color: Colors.yellow.shade900,
                ),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 30),
          //DropdownButton Ataque
          DropdownButtonFormField(
            value: _selectedValAtaque,
            items: _listaAtaque
                .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                _selectedValAtaque = val as String;
              });
            },
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.yellow,
            ),
            dropdownColor: Colors.yellow.shade200,
            decoration: InputDecoration(
                labelText: "Selecciona el ataque de tu Pokémon",
                prefixIcon: Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.yellow.shade900,
                ),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          Center(child: ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext) {
              return AlertDialog(
                title: Text("¡HAS CREADO A TU NUEVO POKÉMON!"),
                content: Text("Estará disponible en breve en la seccion de \"Mis Pokémon\"",),
                backgroundColor: Colors.yellow.shade200,
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();//Quita el alertDialod
                  }, child: Text("OK") )
                ],
              );
            },
            );
          }, child: const Text("Crear Pokémon")),),
        ])
    );
  }
}
