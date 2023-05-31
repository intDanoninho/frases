import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _message = "Clique abaixo para criar uma frase!";
  List<String> messages = [
    "Good morning!",
    "tears will always have wet eyes",
    "I'll cry but I'll survive",
    "There's no life without your life in misery",
    "Don't give up on a precious summer",
  ];
  void _generateText(){

    int i = Random().nextInt(messages.length);
    setState(() {
      this._message = messages[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Aleatórias"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          child: Column(
            
            children: [
            Image.asset(
              "images/title.png",
              fit: BoxFit.fill,
              scale: 1.5,
              width: 300,
          ),
          Padding(padding: EdgeInsets.only(top: 40),
                  child: Text(_message,
                          style: TextStyle(fontSize:20,
                           fontStyle: FontStyle.italic),
                  ),
          ),
          Padding (
            padding: EdgeInsets.only(top: 40),
            child:ElevatedButton(
              onPressed:  ()=> _generateText(),
              child: Text ("Nova Frase",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),                      
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
              
            )
          
        ],
        ),
      )
        )
      
      
  
    );
  }
}