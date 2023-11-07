import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
//import 'package:projectmehema/chatbot/select_bot.dart';
//import 'package:projectmehema/home.dart';
import 'package:projectmehema/login.dart';
//import 'package:projectmehema/listening/audio/music_player.dart';
//import 'package:projectmehema/listening/audio/music_list.dart';
//import 'package:projectmehema/login.dart';
import 'firebase_options.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //root widget of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project MeHeMa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}





