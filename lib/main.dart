import 'package:bloc_management/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_management/screens/api_handlig_presentation/home_screen.dart';
import 'package:bloc_management/screens/home_screen.dart';
import 'package:bloc_management/screens/phone_auth/phone_auth.dart';
import 'package:bloc_management/screens/sign_in/sign_in_page.dart';
import 'package:bloc_management/screens/sign_in/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ApiHomeScreen(),
    );
  }
}
