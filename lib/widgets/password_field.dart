import 'package:api_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _isVisible,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: widget.hintText,
          suffixIcon: IconButton(
            icon: Icon(_isVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
