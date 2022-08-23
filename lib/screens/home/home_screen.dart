import 'package:cam_scanner/utils/colors.dart';
import 'package:cam_scanner/utils/dimensions.dart';
import 'package:cam_scanner/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
part 'widgets/nav_ bar.dart';
part 'widgets/icon_image_circle.dart';
part 'widgets/icon_row.dart';
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
        child: Column(
          children: [
            SizedBox(height: Dimensions.height60,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,),
              child: NavBar(),
            ),
            SizedBox(height: Dimensions.height25,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height30),
              child: Container(
                child: Column(
                    children: [

                      IconsRow(
                        iconDescription: [
                          'Smart Scan',
                          'Import Images',
                          'Import Files',
                          'Id Card',
                        ],
                        iconPaths: [
                          'scan.svg',
                          'image.svg',
                          'folder.svg',
                          'id_card.svg',
                        ],
                      ),
                      SizedBox(height: Dimensions.height30,),
                      IconsRow(
                        iconDescription: [
                          'To Text',
                          'Scan To Excel',
                          'Sign',
                          'All',
                        ],
                        iconPaths: [
                          'to_text.svg',
                          'excel.svg',
                          'sign.svg',
                          'all.svg',
                        ],
                        back3: AppColors.blueColor,
                        icon3: AppColors.mainWhiteColor,
                        back4: AppColors.mainWhiteColor,
                      ),
                    ],
                ),
              ),
            ),
            Container(
              height: Dimensions.pageHeight,
              decoration: BoxDecoration(
                color: AppColors.containerBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius25),
                  topLeft: Radius.circular(Dimensions.radius25),
                )
              ),

            )

          ],
        ),
      ),
    );
  }
}