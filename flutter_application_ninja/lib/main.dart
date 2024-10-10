import 'package:flutter/material.dart';
import 'radio_example.dart';
import 'slider_example.dart';
import 'dropdown_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Chapter 4: Value Widgets"),),
        body: const DropdownExample(),
      ),
    );
  }
}

class ValueWidget extends StatelessWidget {

  const ValueWidget({super.key});
  
  @override
  Widget build(BuildContext context) {

    TextEditingController _controller = TextEditingController(text: "Initial value here");

    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Text Widget"),
            const Icon(
              Icons.cake, 
              color: Colors.red,
              size: 200,
              semanticLabel: "A Cake for birthday",
            ),
            Image.asset(
              'assets/images/photo1.png',
              fit: BoxFit.fill,
            ),
            Image.network("https://images.pexels.com/photos/1661179/pexels-photo-1661179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            MyTextField2()
          ],
        ),
      )
    );  
  }
}

class MyTextField extends StatefulWidget {
  
  const MyTextField({super.key});

  @override
  _MyTextFieldState createState() {
    return _MyTextFieldState(); 
  }
}

class _MyTextFieldState extends State<MyTextField> {



  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          onChanged: (text) {
            setState(() {
              _inputText = text;
            });
          },
          decoration: const InputDecoration(
            labelText: "Email",
            hintText: "you@email.com",
            icon: Icon(Icons.contact_mail)
          ),
        ),
        const SizedBox(height: 20,),
        Text(
          'you typed: $_inputText',
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}

class MyTextField2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: "Initial value here");
    String _inputText = "";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: _controller,
          onChanged: (String val) => _inputText = val,
          decoration: const InputDecoration(
            labelText: "Email",
            hintText: "you@email.com",
            icon: Icon(Icons.email)
          ),
        ),
        const SizedBox(height: 20),
        Text("Typed: $_inputText")
      ],
    );
  }
}
// class RootWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello world");
//   }
// }

// class FancyHelloWidget extends StatelessWidget {

//   const FancyHelloWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("A fancier app"),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           child: Person("Sarah", "Ali"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => {},
//           child: Icon(Icons.thumb_up),),
//           ),
//       );
//   }
// }

// class Person extends StatelessWidget {

//   final String firstName;
//   final String lastName;

//   Person(this.firstName, this.lastName){}

//   @override
//   Widget build(BuildContext context) {
//     return Container(child: Text('$firstName $lastName'));
//   }
// }
