import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(
              menuOptions[i].icon,
              color: AppTheme.primary,
            ),
            title: Text(menuOptions[i].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView1Screen());
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
