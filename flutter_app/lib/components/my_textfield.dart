import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key, // Fix: Change 'super.key' to 'Key? key'
    // Aceder ao que o utilizador escreveu
    required this.controller,
    // String para dizer ao utilizador o que escrever
    required this.hintText,
    // Boolean para esconder a password do utilizador quando estiver a ser escrita
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200, // Set the background color here
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
