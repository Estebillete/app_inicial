import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Avatar')),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.pink[300],
              child: const Text('EM'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
              maxRadius: 150,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/bleach/images/a/af/Capitán_Urahara.jpg/revision/latest?cb=20090123213252&path-prefix=es'))),
    );
  }
}
