
// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/custom_shape.dart';
import 'package:projectmehema/home.dart';
import 'package:projectmehema/reg.dart';

final _formKey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if(!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        elevation: 0.0,        
        flexibleSpace: ClipPath(
          clipper: CustomShape(), child: Container(height: 250, width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 0, 140, 255),
          child: const Center(child: Text("f,d.a fjuq", style: TextStyle(color: Colors.white, fontSize: 50, fontFamily: 'FM-Gemunu'),)), //Login AppBar
          ),
        ),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                const Text('B ;emE,',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontFamily: 'FM-Bindumathi')), // Email
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'B ;emE, we;=<;a lrkak', hintStyle: TextStyle(color: Color.fromARGB(120, 0, 0, 0), fontSize: 15, fontFamily: 'FM-Bindumathi') //Enter Email
                  ),
                  validator: validateEmail, 
                ),
          
                const SizedBox(
                  height: 10,
                ),
                const Text('uqr moh', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontFamily: 'FM-Bindumathi')), // Password
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'uqr moh we;=<;a lrkak', hintStyle: TextStyle(color: Color.fromARGB(120, 0, 0, 0), fontSize: 15, fontFamily: 'FM-Bindumathi') //enter Password
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the password';
                    } else if (value.length < 6) {
                      return 'Password must be atleast 6 characters!';
                    } else if (value.length > 15) {
                      return 'Password mustn\'t be more than 15 characters' ;
                    }
                    return null;
                  }, 
                
                ),
                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: Text(
                    errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 ElevatedButton(
            
                  
                  onPressed: () async {
                    if(_formKey.currentState!.validate()) {
                      try {
                        FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text, 
                          password: passwordController.text)
                        .then((value) {
                          print("Login Successfully");
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()));
                        }).onError((error, stackTrace) {
                          //print("${error.toString()}");
                          setState(() {
                            errorMessage = 'Invalid email or password';
                          });
                        });
                      } catch (e) {
                        print(e);
                      }
                    }
                  //   FirebaseAuth.instance.signInWithEmailAndPassword(
                  //     email: emailController.text, 
                  //     password: passwordController.text)
                  //   .then((value) {
                  //     print("Login Successfully");
                  //     Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomeScreen()));
                  //   }).onError((error, stackTrace) {
                  //     print("Error ${error.toString()}");
                  // });
                    
                     
                    print(emailController.text);
                    print(passwordController.text);

                
                    
                  },
          
                  style: ElevatedButton.styleFrom(minimumSize:const Size (20, 50 ))
                  ,
          
                  child: const Text(
                    'f,d.a fjuq', //login button
                    style: TextStyle(
                      fontFamily: 'FM-Gemunu',
                      fontSize: 30,
              
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
    ),
    );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('.sKqula kE fkao@', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontFamily: 'FMDerana'),),//don't have an account
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            );
          },
          child: const Text('tfykï youq',style: TextStyle(color: Color.fromARGB(255, 0, 128, 255), fontSize: 15, fontFamily: 'FM-Bindumathi'),),
        ),
      ],
    );
  }
}//project_login