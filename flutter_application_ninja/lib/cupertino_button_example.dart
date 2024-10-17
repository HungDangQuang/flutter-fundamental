import 'package:flutter/cupertino.dart';

class CupertinoButtonExample extends StatelessWidget {
  const CupertinoButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CupertinoButton(child: const Text("Disabled"), onPressed: null),
          const CupertinoButton.filled(child: const Text("Enabaled"), onPressed: null),
          CupertinoButton.filled(child: 
          const Text("Enabled"), onPressed: () => print("Cupertino filled button is clicked"))
        ],
      ),
    );
  }
}