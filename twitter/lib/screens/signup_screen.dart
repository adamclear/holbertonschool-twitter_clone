import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/widgets/entry_field.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
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
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight - 88,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomEntryField(
                  hint: 'Enter Name',
                  controller: _nameController,
                ),
                CustomEntryField(
                  hint: 'Enter Email',
                  controller: _emailController,
                ),
                CustomEntryField(
                  hint: 'Enter Password',
                  controller: _passwordController,
                ),
                CustomEntryField(
                  hint: 'Confirm Password',
                  controller: _confirmController,
                ),
                const SizedBox(
                  height: 20
                ),
                CustomFlatButton(
                  label: 'Sign Up',
                  onPressed: () {}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}