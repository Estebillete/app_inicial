import 'package:app_inicial/router/app_router.dart';
import 'package:app_inicial/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Componentes de Flutter')),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(' ${menuOptions[i].name} '),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen());
                    //Navigator.push(context, route);

                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: menuOptions.length));
  }
}
