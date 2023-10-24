import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/home.dart';
import 'package:projectmehema/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //create the controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Username'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
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
                height: 10,
              ),
              const Text('Confirm Password'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Confirm Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              ElevatedButton(
                
              
                onPressed: () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text, 
                    password: passwordController.text)
                  .then((value) {
                      print("Created New Account");
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen())); 
                  }).onError((error, stackTrace) {
                    print('Error ${error.toString()}');
                  });
                  

                print(nameController.text);
                print(emailController.text);
                print(passwordController.text);
                //print(addressController.text);
                },

                style: ElevatedButton.styleFrom(minimumSize:Size (20, 50 )),

                child: Text(
                  'Signup',
                  style: TextStyle(
                    fontFamily: 'arial',
                    fontSize: 18,
            
                  ),
                  
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              signInOption(),
            ],
          ),
        ),
      ),
    );
  }
  Row signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?'),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}