
import 'package:tugas_02/pages/navigasi/home_screen.dart';
import 'package:tugas_02/pages/navigasi/main_screen.dart';
import 'package:tugas_02/pages/navigasi/profile_screen.dart';
import 'package:tugas_02/pages/navigasi/setting_screen.dart';
import 'package:tugas_02/widgets/tab_navigator_widget.dart';

class AppRoute {
  static String mainScreen = '/main-screen';
  static String homeScreen = '/home-screen';
  static String settingScreen = '/setting-screen';
  static String profileScreen = '/profile-screen';
  static String tabScreen = '/tab-screen';

}

final routes = {
  AppRoute.mainScreen: (context) => MainScreen(),
  AppRoute.homeScreen: (context) => HomeScreen(),
  AppRoute.settingScreen : (context) => SettingScreen(),
  AppRoute.profileScreen : (context) => ProfileScreen(),
  AppRoute.tabScreen: (context) => TabNavigatorWidget(),
};