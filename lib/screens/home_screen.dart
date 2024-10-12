import 'package:bloc_management/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_management/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.purple.shade500,
            child: BlocConsumer<InternetBloc, InternetState>(
              listener: (context, state) {
                if (state is InternetGainedState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Internet Connect'),
                    backgroundColor: Colors.green.shade300,
                  ));
                }
                else if (state is InternetLostState){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Internet disconnect'),
                    backgroundColor: Colors.blue.shade500,
                  ));
                }
              },
              builder: (BuildContext context, state) {
                if (state is InternetGainedState) {
                  return Text('Connected');
                } else if (state is InternetLostState) {
                  return Text('Connectivity Lost');
                } else {
                  return Text('Loading');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
