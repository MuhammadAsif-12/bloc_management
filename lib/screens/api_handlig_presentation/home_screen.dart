import 'package:flutter/material.dart';

class ApiHomeScreen extends StatelessWidget {
  const ApiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Api Handling"),
        backgroundColor: const Color(0xffF97038),
      ),
      backgroundColor: Colors.white,

    );
  }
}