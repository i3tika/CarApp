import 'package:flutter/material.dart';
import 'package:myapp/sogin_in/sogin_in.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.text,
    required this.controller,
  }) : super(key: key);
  final String text;
  final TextEditingController controller;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

TextEditingController controller = TextEditingController();
// TextEditingController controllerpassword = TextEditingController();

String? errorText;

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (val) {
        if (val.contains('@')) {
          errorText = null;
          setState(() {});
        } else {
          errorText = 'Ведите правильный Email';
          setState(() {});
        }
      },
      decoration: InputDecoration(errorText: errorText, hintText: widget.text),
    );
  }
}

class TextFiedlTwo extends StatefulWidget {
  const TextFiedlTwo({
    super.key,
    required this.text,
    required this.controller,
  });

  final String text;
  final TextEditingController controller;
  // final bool obscureText;
  @override
  State<TextFiedlTwo> createState() => _TextFiedlTwoState();
}

bool isPasswors = true;
bool obscureText = false;

class _TextFiedlTwoState extends State<TextFiedlTwo> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswors,
      decoration: InputDecoration(
          errorText: errorText,
          hintText: widget.text,
          suffixIcon: IconButton(
              onPressed: () {
               isPasswors = !isPasswors;
               setState(() {
                 
               });
              },
              icon: Icon(isPasswors?
                Icons.remove_red_eye:Icons.energy_savings_leaf
              ))),
    );
  }
}
