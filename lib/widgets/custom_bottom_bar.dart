import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserBlueGray200,
      activeIcon: ImageConstant.imgUserBlueGray200,
      type: BottomBarEnum.Userbluegray200,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.v,
      decoration: BoxDecoration(
        color: appTheme.black90029.withOpacity(0.1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(29.h),
          bottomLeft: Radius.circular(30.h),
          bottomRight: Radius.circular(29.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4003a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.outlineTealC.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder23,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 15.v,
                width: 16.h,
                color: theme.colorScheme.onPrimary,
                margin: EdgeInsets.symmetric(vertical: 15.v),
              ),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 15.adaptSize,
              width: 15.adaptSize,
              color: appTheme.blueGray200,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Userbluegray200,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
