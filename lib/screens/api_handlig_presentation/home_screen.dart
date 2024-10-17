import 'package:flutter/material.dart';

class ApiHomeScreen extends StatelessWidget {
  const ApiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("Api Handling")),
        backgroundColor: const Color(0xffF97038),
      ),
      backgroundColor: Colors.white,

    );
  }
}