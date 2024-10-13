import 'package:bloc_management/bloc/sign_in/sign_in_bloc.dart';
import 'package:bloc_management/bloc/sign_in/sign_in_event.dart';
import 'package:bloc_management/bloc/sign_in/sign_in_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      height: 65,
                      width: 50,
                      image: AssetImage('assets/logo.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'Rubik Medium'),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xffF97038),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontFamily: 'Rubik Medium'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Welcome to my flutter state management project with bloc',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontFamily: 'Rubik Regular'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(SignInChangedEvent(
                        emailController.text, passwordController.text));
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.alternate_email,
                      color: Color(0xff323F4B),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(SignInChangedEvent(
                        emailController.text, passwordController.text));
                  },
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: const Color(0xffF8F9FA),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Color(0xff323F4B),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    if (state is SignInErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                const SizedBox(
                  height: 250,
                ),
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    return CupertinoButton(
                      onPressed: () {
                        if (state is SignInValidState) {
                          BlocProvider.of<SignInBloc>(context).add(
                              SignInSubmittedEvent(emailController.text,
                                  passwordController.text));
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            color: (state is SignInValidState)
                                ? Colors.blue
                                : Color(0xffF97038),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Rubik Regular',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do not have an Account',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'Rubik Regular'),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xffF97038),
                      ),
                    ),
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
