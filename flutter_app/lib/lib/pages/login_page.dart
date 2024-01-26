import 'package:flutter/material.dart';
import 'package:gym_application/components/my_button.dart';
import 'package:gym_application/components/my_logo.dart';
import 'package:gym_application/components/my_textfield.dart';
import 'package:gym_application/components/square_tile.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller

  //password controller
  final userNameController = TextEditingController();
  //username controller
  final passwordController = TextEditingController();

  //Sign in method
  void signUserIn() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),

                //logo
                const MyLogo(
                  imagePaht: 'lib/images/muscle.png',
                ),

                //welcome back
                const SizedBox(height: 35),

                Text(
                  "Welcome Back, we missed you!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 35),

                //username textfield
                MyTextField(
                  controller: userNameController,
                  hintText: "Username...",
                  obscureText: false,
                ),

                //password textfield
                const SizedBox(height: 20),
                MyTextField(
                  controller: passwordController,
                  hintText: "Password...",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 2),

                //sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 30),
                //continue button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or continue wiht...'),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ))
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // google + apple login
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google logo
                    SquareTile(imagePaht: 'lib/images/google.png'),

                    SizedBox(width: 25),

                    //apple logo
                    SquareTile(imagePaht: 'lib/images/apple.png')
                  ],
                ),

                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a menber ?'),
                    SizedBox(width: 4),
                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
