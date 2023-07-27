import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Card Widget'),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard1(),
            SizedBox(
              height: 10,
            ),
            Customcard2(
              imageUrl:
                  'https://i.pinimg.com/564x/86/55/ed/8655ed4cab42eff56bc2db7844270e23.jpg',
              name: 'Minazuki (皆尽, Todas las Cosas Acaban) ',
            ),
            SizedBox(
              height: 10,
            ),
            Customcard2(
              imageUrl:
                  'https://static.wikia.nocookie.net/ranmafanon/images/6/6d/-manga-rain-bleach-ch161-12-13.PNG.png/revision/latest?cb=20200911184302',
              name:
                  'Senbonzakura Kageyoshi (千本桜・景厳, Vibrante disposición de mil flores de cerezo)',
            ),
            SizedBox(
              height: 10,
            ),
            Customcard2(
              imageUrl:
                  'https://i.pinimg.com/originals/40/a1/1a/40a11a74c3fcc677cb209b011e177e82.jpg',
              name:
                  'Kokujō Tengen Myōō (黒縄天譴明王, Vidyaraja del castigo divino de Kalasutra)',
            ),
            SizedBox(
              height: 10,
            ),
            Customcard2(
              imageUrl:
                  'https://i.pinimg.com/originals/0e/9a/a4/0e9aa433f66f39850f66a129e22760cc.jpg',
              name:
                  'Ryūmon Hōzukimaru (龍紋鬼灯丸, Escudo de Dragón de la Lámpara de Ogro)',
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
