import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/components/image_tiled.dart';
import 'package:login/components/mybutton.dart';
import 'package:login/components/textFeild.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void userSignIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome Back, You\'ve been missed!',
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(
                height: 25,
              ),
              //email textfield
              MyTextFeild(
                  controller: usernamecontroller,
                  hinttext: "Email",
                  obscureText: true),

              const SizedBox(
                height: 10,
              ),

              //password textfield
              MyTextFeild(
                  controller: usernamecontroller,
                  hinttext: "Password",
                  obscureText: true),

              const SizedBox(
                height: 10,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //login button
              MyButton(
                onTap: userSignIn,
              ),
              const SizedBox(
                height: 50,
              ),
              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[700],
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[700],
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              //google+apple

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTiled(imagePath: 'lib/images/search.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTiled(imagePath: 'lib/images/apple-logo.png'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
