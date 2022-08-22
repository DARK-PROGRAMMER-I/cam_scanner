part of '../home_screen.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
