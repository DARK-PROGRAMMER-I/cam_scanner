import 'package:cam_scanner/screens/files/files_screen.dart';
import 'package:cam_scanner/screens/home/home_screen.dart';
import 'package:cam_scanner/screens/profile/profile_screen.dart';
import 'package:cam_scanner/screens/tools/tools_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part 'provider/nav_provider.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    FilesScreen(),
    ToolsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavProvider>(context);
    return Scaffold(
      body: _screens[navProvider.index!],
    );
  }
}
