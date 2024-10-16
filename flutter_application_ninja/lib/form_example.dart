import 'dart:developer';

import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  
  @override
  State<StatefulWidget> createState() {
    return FormExampleState();
  }
}

class FormExampleState extends State<FormExample> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter the email"
            ),
            validator: (String? value) {
              if(value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
            onSaved: (newValue) {
              print("Save email value");
              email = newValue!;
            },
            ),
          ElevatedButton(onPressed: () {
            if(_key.currentState!.validate()) {
              print("Process data");
              _key.currentState?.save();
            }
          }, child: const Text("Submit"))  
        ],
      ));
  }
}