import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  String _message = "Clique no botão para gerar uma nova frase";

  List<String> messages = [
    "No meio da dificuldade encontra-se a oportunidade.",
    "É parte da cura o desejo de ser curado.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
    "Imagine uma nova história para sua vida e acredite nela."
  ];
  void _gerarTexto(){
    int randomIndex = Random().nextInt(messages.length);

    setState((){

      this._message = messages[randomIndex];
    });
  }
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
              Padding(padding: EdgeInsets.only(top:40,bottom: 30), child: Text(_message, style: TextStyle(fontSize: 24),)),
              ElevatedButton(
                onPressed: () => _gerarTexto(),
                child: Text("Nova frase"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 54, 71, 85)
                ))
            ],
        )),)     
    );
  }
}
