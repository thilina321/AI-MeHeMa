import 'package:flutter/material.dart';

class RelaxPainting extends StatefulWidget {
  const RelaxPainting({super.key});

  @override
  State<RelaxPainting> createState() => _RelaxPaintingState();
}

class _RelaxPaintingState extends State<RelaxPainting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Relax Painting")),
      body: Center(child:ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      )
      )
    );
  }
}