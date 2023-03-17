import 'package:flutter/material.dart';

class tipos extends StatefulWidget {
  const tipos({Key? key}) : super(key: key);

  @override
  State<tipos> createState() => _tiposState();
}

class _tiposState extends State<tipos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100,
        title: Image.asset('assets/logo.png',width: 280,),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.yellow.shade50,
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Haz clik en cada tipo de \npokemon para saber lo \nnecesario de ellos", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,))
              ],
            ),
            SizedBox(height: 50,),
            Center(child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext) {
                return AlertDialog(
                  title: Text("¡Pokemon de Fuego!"),
                  icon: Image.asset('assets/logo.png',height: 50),
                  content: Text("Los Pokémon de tipo fuego basan sus ataques principalmente en el control de este elemento y la mayoría de estos ataques pueden quemar al Pokémon oponente. \nSon apasionados y algunos de mal carácter, viven en cuevas o zonas rocosas y muy áridas, y más probable aún cerca de volcanes activos.",),
                  backgroundColor: Colors.red.shade50,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//Quita el alertDialod
                    }, child: Text("OK") )
                  ],
                );
              },
              );
            }, child: const Text(style: TextStyle(color: Colors.red, fontSize: 30, fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold),"FUEGO")),),
            SizedBox(height: 50,),
            Center(child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext) {
                return AlertDialog(
                  title: Text("¡Pokemon de Agua!"),
                  icon: Image.asset('assets/logo.png',height: 50),
                  content: Text("Los Pokémon de agua resultan poco eficaces y débiles frente al tipo planta. Sin embargo, muchos Pokémon de agua son también tipo hielo o pueden aprender ataques de hielo, que resultan efectivos contra los de planta, disminuyendo así su desventaja de tipo",),
                  backgroundColor: Colors.blue.shade50,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//Quita el alertDialod
                    }, child: Text("OK") )
                  ],
                );
              },
              );
            }, child: Text(style: TextStyle(color: Colors.blue, fontSize: 30, fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold),"AGUA")),),
            SizedBox(height: 50,),
            Center(child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext) {
                return AlertDialog(
                  title: Text("¡Pokemon de Tierra!"),
                  icon: Image.asset('assets/logo.png',height: 50),
                  content: Text("Los Pokémon de tipo tierra destacan por ser inmunes ante ataques tipo eléctrico y no reciben daño por tormentas de arena. Son buenos combatientes y poseen ataques sumamente devastadores, como fisura y terremoto; entre otros.",),
                  backgroundColor: Colors.brown.shade50,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//Quita el alertDialod
                    }, child: Text("OK") )
                  ],
                );
              },
              );
            }, child: Text(style: TextStyle(color: Colors.brown, fontSize: 30, fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold),"TIERRA")),),
            SizedBox(height: 50,),
            Center(child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext) {
                return AlertDialog(
                  title: Text("¡Pokemon Volador!"),
                  icon: Image.asset('assets/logo.png',height: 50),
                  content: Text("Los Pokémon de tipo volador son rápidos y con ataques que normalmente son de contacto físico, o en los que utilizan el viento a su favor. En su mayoría los Pokémon del tipo volador poseen alas, aunque hay excepciones, como Rayquaza y Gyarados que siempre flotan sin poseer ni alas ni plumas, o Tornadus, Thundurus y Landorus que montan sobre nubes.",),
                  backgroundColor: Colors.blueGrey.shade50,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//Quita el alertDialod
                    }, child: Text("OK") )
                  ],
                );
              },
              );
            }, child: Text(style: TextStyle(color: Colors.blueGrey, fontSize: 30, fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold),"VOLADOR")),),
            SizedBox(height: 50,),
          ],
        )
      ),
    );
  }
}
