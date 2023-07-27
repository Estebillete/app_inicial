import 'package:app_inicial/models/menu_option.dart';
import 'package:app_inicial/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'list1',
        name: 'Listview 1',
        screen: const Listview1Screen(),
        icon: Icons.wysiwyg_outlined),
    MenuOption(
        route: 'list2',
        name: 'Listview 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.crisis_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'animated',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.auto_fix_normal_outlined),
    MenuOption(
        route: 'input',
        name: 'Input',
        screen: const InputScreen(),
        icon: Icons.dynamic_form),
    MenuOption(
        route: 'slider',
        name: 'Slider & Check',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'LvBuilder',
        name: 'ListviewBuilder',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'list1': (BuildContext context) => const Listview1Screen(),
    'list2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
*/
  static onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
