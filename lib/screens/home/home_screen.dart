import 'package:cam_scanner/utils/colors.dart';
import 'package:cam_scanner/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
part 'widgets/nav_ bar.dart';
part 'widgets/icon_image_circle.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height30),
          child: Column(
            children: [
              SizedBox(height: Dimensions.height30,),
              NavBar(),
              SizedBox(height: Dimensions.height15,),
              Container(
                child: Column(
                    children: [
                      Row(
                        children: [
                          IconImageCircle()
                        ],
                      )
                    ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
