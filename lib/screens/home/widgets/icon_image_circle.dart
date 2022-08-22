part of '../home_screen.dart';
class IconImageCircle extends StatelessWidget {
  const IconImageCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width60,
      height: Dimensions.height60,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: Center(child: SvgPicture.asset('assets/scan.svg', color: AppColors.mainColor, height: Dimensions.width30, width: Dimensions.height30,))
      ,
    );
  }
}
