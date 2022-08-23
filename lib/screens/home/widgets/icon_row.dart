part of '../home_screen.dart';

class IconsRow extends StatelessWidget {
  final List<String> iconPaths;
  final List<String> iconDescription;
  final Color? back1;
  final Color? back2;
  final Color? back3;
  final Color? back4;

  final Color? icon1;
  final Color? icon2;
  final Color? icon3;
  final Color? icon4;

  final double? size;


  const IconsRow({Key? key,
    required this.iconPaths,
    this.back1,
    this.back2,
    this.back3,
    this.back4,
    this.icon1,
    this.icon2,
    this.icon3,
    this.icon4,
    this.size,
    required this.iconDescription}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconImageCircle(
          backColor: icon1 ?? AppColors.greyColor,
          iconColor:  back1 ??AppColors.mainColor,
          path: '${iconPaths[0]}',
          fieldname: '${iconDescription[0]}',
        ),
        IconImageCircle(
          backColor:icon2 ?? AppColors.greyColor,
          iconColor: back2 ?? AppColors.mainColor,
          path: '${iconPaths[1]}',
          fieldname: '${iconDescription[1]}',
        ),
        IconImageCircle(
          backColor:icon3 ?? AppColors.greyColor,
          iconColor: back3 ?? AppColors.blueColor,
          path: '${iconPaths[2]}',
          fieldname: '${iconDescription[2]}',
        ),
        IconImageCircle(
          backColor:icon4 ?? AppColors.greyColor,
          iconColor: back4 ?? AppColors.blueColor,
          path: '${iconPaths[3]}',
          fieldname: '${iconDescription[3]}',
        )
      ],
    );
  }
}
