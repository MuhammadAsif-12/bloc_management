import 'package:bloc_management/screens/phone_auth/verify_phone_number_page.dart';
import 'package:flutter/material.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text(" Phone Authentication ")),
        backgroundColor: const Color(0xffF97038),
      ),
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
                  height: 100,
                ),
                const Center(
                  child: Text(
                    'Firebase Phone Authentication in Flutter using the BLoC pattern.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontFamily: 'Rubik Regular'),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                const TextField(
                  maxLength: 11,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    counterText: '',
                    fillColor: Color(0xffF8F9FA),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerifyPhoneNumberPage()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Color(0xffF97038),
                    ),
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
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
