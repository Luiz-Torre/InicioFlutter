import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Aleatórias"),
        backgroundColor: Colors.blue,),
        body: Center(child: Container(
          child: Column(
            children: [
              Image.asset("images/title.png", width: 350),
              Padding(padding: EdgeInsets.only(top:40,bottom: 30), child: Text("Clique para gerar uma nova frase!", style: TextStyle(fontSize: 24),)),
              ElevatedButton(
                onPressed: (){},
                child: Text("Nova frase"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 54, 71, 85)
                ))
            ],
        )),)     
    );
  }
}
