import 'package:flutter/material.dart';
import 'package:projectmehema/chatbot/chatgpt/chat_screen.dart';
import 'package:projectmehema/chatbot/lds10/chatbot.dart';

class SelectBot extends StatefulWidget {
  const SelectBot({super.key});

  @override
  State<SelectBot> createState() => _SelectBotState();
}

class _SelectBotState extends State<SelectBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select your bot")),
      body: Column(children: [
        const SizedBox(height: 300),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBot()));
            }, child: 
            Text("Chatbot AI MeHeMa", 
              style: TextStyle(
              fontFamily: 'arial',
              fontSize: 18,)
             )
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
            }, child: 
            Text("Chatbot GPT", 
              style: TextStyle(
              fontFamily: 'arial',
              fontSize: 18,)
             )
            ),
          ],
        ),
      ],)
    );
  }
}