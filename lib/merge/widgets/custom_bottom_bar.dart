import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/theme_helper.dart';
import 'custom_image_view.dart';

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
      icon: ImageConstant.imgHomeBlueGray30005,
      activeIcon: ImageConstant.imgHomeBlueGray30005,
      type: BottomBarEnum.Homebluegray30005,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCar,
      activeIcon: ImageConstant.imgCar,
      type: BottomBarEnum.Car,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgInfoGray90002,
      activeIcon: ImageConstant.imgInfoGray90002,
      type: BottomBarEnum.Infogray90002,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmarkBlueGray30006,
      activeIcon: ImageConstant.imgBookmarkBlueGray30006,
      type: BottomBarEnum.Bookmarkbluegray30006,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmarkBlueGray3000624x24,
      activeIcon: ImageConstant.imgBookmarkBlueGray3000624x24,
      type: BottomBarEnum.Bookmarkbluegray3000624x24,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              color: appTheme.orangeA20001,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              color: appTheme.blueGray30005,
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
  Homebluegray30005,
  Car,
  Infogray90002,
  Bookmarkbluegray30006,
  Bookmarkbluegray3000624x24,
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
