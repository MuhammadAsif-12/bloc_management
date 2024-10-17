import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("Home")),
        backgroundColor: const Color(0xffF97038),
      ),
      backgroundColor: Colors.white,

    );
  }
}