import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/home.dart';
import 'package:projectmehema/login.dart';

final _formKey = GlobalKey<FormState>();

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key:_formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                const Text('Username'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    } else if (value.length < 3) {
                      return 'Username must be atleast 3 characters long';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                //some space between name and email
                const SizedBox(
                  height: 10,
                ),
                const Text('Email'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Email',
                  ),
                  validator: validateEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                
                const SizedBox(
                  height: 10,
                ),
                const Text('Password'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the password';
                    } else if (value.length < 6) {
                      return 'Password must be atleast 6 characters!';
                    } else if (value.length > 15) {
                      return 'Password mustn\'t be more than 15 characters!' ;
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Confirm Password'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Confirm Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the password';
                    } else if (value.length < 6) {
                      return 'Password must be atleast 6 characters!';
                    } else if (value.length > 15) {
                      return 'Password mustn\'t be more than 15 characters!' ;
                    } else if (value != passwordController.text) {
                      return 'Password doesn\'t match!';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    errorMessage,
                    style: TextStyle(
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
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: emailController.text, 
                          password: passwordController.text)
                        .then((value) {
                          print("New Account Created!");
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen()));
                        }).onError((error, stackTrace) {
                          print("${error.toString()}");
                          setState(() {
                            errorMessage = 'Email already exists!';
                          });
                        });
                      } catch (e) {
                        print(e);
                      }
                    };
                    // FirebaseAuth.instance.createUserWithEmailAndPassword(
                    //   email: emailController.text, 
                    //   password: passwordController.text)
                    // .then((value) {
                    //     print("Created New Account");
                    //     Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => HomeScreen())); 
                    // }).onError((error, stackTrace) {
                    //   print('Error ${error.toString()}');
                    // });
                    
          
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