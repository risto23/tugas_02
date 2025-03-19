import 'package:flutter/material.dart';
import 'package:tugas_02/utils/routes.dart';
import 'package:tugas_02/widgets/menu_navigasi_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  void onClick(String menu) {
    switch (menu) {
      case 'Home':
        Navigator.pushNamed(context, AppRoute.homeScreen);
        break;
      case 'Settings':
        Navigator.pushNamed(context, AppRoute.settingScreen);
        break;
      case 'Profile':
        Navigator.pushNamed(context, AppRoute.profileScreen);
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: ListView(
        children: [Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuNavigasiWidget(
              onClick: onClick,
            ),
          ],
        )
        ],
      ),
    );
  }
}