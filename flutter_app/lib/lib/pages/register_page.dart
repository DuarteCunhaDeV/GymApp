import 'package:flutter/material.dart';
import 'package:gym_application/components/my_button.dart';
import 'package:gym_application/components/my_logo.dart';
import 'package:gym_application/components/my_textfield.dart';

//dad
void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
                const SizedBox(height: 75),

                //logo
                const MyLogo(
                  imagePaht: 'lib/images/muscle.png',
                ),

                //welcome back
                const SizedBox(height: 35),

                Text(
                  "Feel truly embraced in our application!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 35),

                //Username name
                MyTextField(
                  controller: userNameController,
                  hintText: "Name...",
                  obscureText: false,
                ),

                const SizedBox(height: 20),

                //Username Age
                MyTextField(
                  controller: userNameController,
                  hintText: "Age...",
                  obscureText: false,
                ),

                const SizedBox(height: 20),

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

                //sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 50),

                //continue button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a menber ?'),
                    SizedBox(width: 4),
                    Text(
                      'Register Now!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
