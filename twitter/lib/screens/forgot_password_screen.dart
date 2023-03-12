import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/widgets/entry_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight - 88,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20
                ),
                const Text(
                  'Enter your email address below to receive password reset instructions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 131, 131, 131),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 50
                ),
                CustomEntryField(
                  hint: 'Enter Email',
                  controller: _emailController
                ),
                const SizedBox(
                  height: 5
                ),
                CustomFlatButton(
                  label: 'Submit',
                  onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}