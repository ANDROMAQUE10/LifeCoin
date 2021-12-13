import 'package:flutter/material.dart';

import 'models/form_input_widget.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FormInpitWidget(),
    );
  }
}