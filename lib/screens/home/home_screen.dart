import 'package:cam_scanner/utils/colors.dart';
import 'package:cam_scanner/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: Dimensions.height20),
                        prefixIcon: Icon(Icons.search, size: Dimensions.height30,),
                        filled: true,
                        fillColor: AppColors.blackColor,
                        focusColor: AppColors.blackColor,
                      ),
                    )
                  ),
                  SizedBox(width: Dimensions.width15,),
                  SvgPicture.asset('assets/crown.svg', color: AppColors.yelloColor,height: Dimensions.width30, width: Dimensions.height30,)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
