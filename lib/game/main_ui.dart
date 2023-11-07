import 'package:flutter/material.dart';

class FunGame extends StatefulWidget {
  const FunGame({super.key});

  @override
  State<FunGame> createState() => _FunGameState();
}

class _FunGameState extends State<FunGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fun Game")),
      body: Center(child:ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
        ),
      )
    );
  }
}