import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            fontWeight: FontWeight.bold
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
                const SizedBox(height: 20),
                CustomFlatButton(
                  label: 'Submit',
                  onPressed: () => {
                    Provider.of<AppState>(context, listen: false).setpageIndex = 0,
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen()
                      ),
                    ),
                  },
                ),
                const SizedBox(height: 80),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp()
                      )
                    );
                  },
                  child: const Text(
                  'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword()
                      )
                    );
                  },
                  child: const Text(
                  'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}