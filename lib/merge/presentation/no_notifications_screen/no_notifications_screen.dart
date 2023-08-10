import 'package:flutter/material.dart';

import '../export.dart';

class NoNotificationsScreen extends StatelessWidget {
  const NoNotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray70001,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Spacer(),
                      Text("No notifications",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleMedium),
                      Container(
                          width: getHorizontalSize(204),
                          margin: getMargin(top: 21),
                          child: Text(
                              "You have no notifications at this time thank you",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall)),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrationIndigoA700,
                          height: getVerticalSize(207),
                          width: getHorizontalSize(219),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 86, right: 38, bottom: 86))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
