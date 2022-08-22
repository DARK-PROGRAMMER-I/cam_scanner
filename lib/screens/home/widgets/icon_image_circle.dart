part of '../home_screen.dart';
class IconImageCircle extends StatelessWidget {
  final Color? backColor;
  final Color? iconColor;
  final double? iconSize;
  final String? path;
  final String? fieldname;
  const IconImageCircle({Key? key,
    this.backColor,
    this.iconColor,
    this.iconSize = 0,
    this.path,
    required this.fieldname,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
          width: Dimensions.width40,
          height: Dimensions.height40,
          decoration: BoxDecoration(
              color: backColor,
              shape: BoxShape.circle
            ),
          child: Center(child: SvgPicture.asset('assets/$path', color: iconColor, height:iconSize == 0? Dimensions.height25 : iconSize, width:iconSize == 0? Dimensions.width25 : iconSize ,),
            ),
        ),
        SizedBox(height: 10,),
        SmallText(name: fieldname!, bold: false, align: true,)
      ],
    );
  }
}
