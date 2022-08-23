import 'package:cam_scanner/screens/files/files_screen.dart';
import 'package:cam_scanner/screens/home/home_screen.dart';
import 'package:cam_scanner/screens/profile/profile_screen.dart';
import 'package:cam_scanner/screens/tools/tools_screen.dart';
import 'package:cam_scanner/utils/colors.dart';
import 'package:cam_scanner/utils/dimensions.dart';
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
      bottomNavigationBar: Theme(
          data:Theme.of(context).copyWith(
            canvasColor: AppColors.containerBackgroundColor,),
          child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: Dimensions.icon30, ),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy, ),
              label: 'Files',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.border_all),
              label: 'Tools',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Me',
            ),
          ],
          onTap: (int index){
            navProvider.getIndex(index);
          },
            backgroundColor: AppColors.mainWhiteColor,
          selectedItemColor: AppColors.mainColor,
          currentIndex: navProvider.index!,
        ),
      ),
    );
  }
}
