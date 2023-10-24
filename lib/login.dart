import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/home.dart';
import 'package:projectmehema/reg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Login'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              const Text('Password'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               ElevatedButton(
  
                
                onPressed: () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text, 
                    password: passwordController.text)
                  .then((value) {
                    print("Login Successfully");
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                });
                  
                   
                  print(emailController.text);
                  print(passwordController.text);
                  
                },

                style: ElevatedButton.styleFrom(minimumSize:Size (20, 50 ))
                ,

                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'arial',
                    fontSize: 18,
            
                  ),
                  
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              signUpOption(),
            ],
        ),
      ),
    ),
    );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?'),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            );
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}