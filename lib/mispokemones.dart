import 'package:flutter/material.dart';

class mispokemones extends StatefulWidget {
  const mispokemones({Key? key}) : super(key: key);

  @override
  State<mispokemones> createState() => _mispokemonesState();
}

class _mispokemonesState extends State<mispokemones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 100,
          title: Image.asset('assets/logo.png',width: 280,),
          centerTitle: true,
        ),
        body:GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          children: [
            Container(child: Image.asset('assets/pikachu.png'),
              color: Colors.red,
            ),
            Container(child: Image.asset('assets/eevee.png'),
              color: Colors.blue,
            ),
            Container(child: Image.asset('assets/charizar.png'),
              color: Colors.green,
            ),
            Container(child: Image.asset('assets/planta.png'),
              color: Colors.pink,
            ),
            Container(child: Image.asset('assets/raichu.png'),
              color: Colors.purple,
            ),
            Container(child: Image.asset('assets/bolba.png'),
              color: Colors.orange,
            ),
            Container(child: Image.asset('assets/pajaro.png'),
              color: Colors.yellow,
            ),
            Container(child: Image.asset('assets/rata.png'),
              color: Colors.red,
            ),
            Container(child: Image.asset('assets/rosa.png'),
              color: Colors.blue,
            ),
            Container(child: Image.asset('assets/demonio.png'),
              color: Colors.green,
            ),
            Container(child: Image.asset('assets/squirtle.png'),
              color: Colors.pink,
            ),
            /*Container(child: Image.asset('assets/toro.png'),
              color: Colors.purple,
            ),*/
            Container(child: Image.asset('assets/snake.png'),
              color: Colors.orange,
            ),
            Container(child: Image.asset('assets/Snorlax.png'),
              color: Colors.yellow,
            ),
            Container(child: Image.asset('assets/Butterfree.png'),
              color: Colors.red,
            ),
          ],

        )
    );
  }
}
