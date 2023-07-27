import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Ichigo', 'Rukia', 'Renji', 'Urahara'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Lista view'),
          ),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded)))
                .toList()
          ],
        ));
  }
}
