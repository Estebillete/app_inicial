import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Hola mundo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('me parece que adios mundo :( '),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ]),
            actions: [
              TextButton(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Cancelar',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Ok',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20)),
          elevation: 5,
          title: const Text('Hola mundo'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('me parece que adios mundo :( '),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FlutterLogo(
                size: 100,
              ),
            )
          ]),
          actions: [
            TextButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                onPressed: () => Navigator.pop(context)),
            TextButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Ok',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                onPressed: () => Navigator.pop(context))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('data'),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                child: Text(
                  'Boton de Alerta',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              //onPressed: () => displayDialogIos(context),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIos(context)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.close),
        ));
  }
}
