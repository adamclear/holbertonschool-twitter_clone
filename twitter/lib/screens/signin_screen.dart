// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomEntryField(
                  hint: 'Enter Email',
                  controller: _emailController
                ),
                CustomEntryField(
                  hint: 'Enter Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
                CustomFlatButton(
                  label: 'Submit',
                  onPressed: () => {
                    print('Button Pressed!')
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const SignUp()
                //       )
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}