import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('타이틀2'),
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: true,
      ),
    );
  }
}
