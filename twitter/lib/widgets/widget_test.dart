import 'package:twitter/widgets/flat_button.dart';
import 'package:flutter/material.dart';

class EntryFieldTest extends StatelessWidget {

  const EntryFieldTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomFlatButton(
            label: 'Submit',
            // ignore: avoid_print
            onPressed: () => print('Button Pressed!'),
          ),
        ),
      ),
    );
  }
}