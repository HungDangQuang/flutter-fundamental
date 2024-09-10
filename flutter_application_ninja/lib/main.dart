import 'package:flutter/material.dart';

void main() {
  runApp(const FancyHelloWidget());
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
      home: RootWidget(),
    );
  }
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello world");
  }
}

class FancyHelloWidget extends StatelessWidget {

  const FancyHelloWidget({super.key});
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("A fancier app"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Person("Sarah", "Ali"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.thumb_up),),
          ),
      );
  }
}

class Person extends StatelessWidget {

  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName){}

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('$firstName $lastName'));
  }
}
