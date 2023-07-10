import 'package:fl_components_student/models/menu_options.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_rounded,
        name: 'ListView Version 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_outlined,
        name: 'ListView Version 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_travel_sharp,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_rounded,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_lesson,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.format_indent_decrease_outlined,
        name: 'Input Screen',
        screen: const InputScreen())
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> rutasnuevas = {};
    for (final opciones in menuOptions) {
      rutasnuevas
          .addAll({opciones.route: (BuildContext context) => opciones.screen});
    }
    return rutasnuevas;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}