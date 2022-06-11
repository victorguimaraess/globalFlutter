import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;

  InputForm({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
