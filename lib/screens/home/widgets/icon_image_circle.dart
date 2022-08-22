part of '../home_screen.dart';
class IconImageCircle extends StatelessWidget {
  final Color? backColor;
  final Color? iconColor;
  final double? iconSize;
  final String? path;

  const IconImageCircle({Key? key,
    this.backColor,
    this.iconColor,
    this.iconSize = 0,
    this.path
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width60,
      height: Dimensions.height60,
      decoration: BoxDecoration(
        color: backColor,
        shape: BoxShape.circle
      ),
      child: Center(child: SvgPicture.asset('assets/$path', color: iconColor, height:iconSize == 0? Dimensions.height35 : iconSize, width:iconSize == 0? Dimensions.width35 : iconSize ,),
      )
      ,
    );
  }
}
