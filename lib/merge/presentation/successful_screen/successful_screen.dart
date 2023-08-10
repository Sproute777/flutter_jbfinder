import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 47,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftGray90002,
                    margin: getMargin(left: 23, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenuGray90002,
                      margin:
                          getMargin(left: 19, top: 16, right: 19, bottom: 16))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(177),
                          width: getHorizontalSize(374),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 29,
                                        top: 19,
                                        right: 29,
                                        bottom: 19),
                                    decoration: AppDecoration.fill6,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Text("UI/UX Designer",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumGray90002)),
                                          Padding(
                                              padding: getPadding(top: 14),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("Google",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Container(
                                                        height: getSize(7),
                                                        width: getSize(7),
                                                        margin: getMargin(
                                                            left: 22,
                                                            top: 9,
                                                            bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray90002,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        3)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 32,
                                                            bottom: 1),
                                                        child: Text(
                                                            "California",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Container(
                                                        height: getSize(7),
                                                        width: getSize(7),
                                                        margin: getMargin(
                                                            left: 32,
                                                            top: 9,
                                                            bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray90002,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        3)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Text("1 day ago",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.lightBlue100,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder42),
                                    child: Container(
                                        height: getSize(84),
                                        width: getSize(84),
                                        padding: getPadding(all: 14),
                                        decoration: AppDecoration.fill2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder42),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle1,
                                              height: getSize(54),
                                              width: getSize(54),
                                              alignment: Alignment.center)
                                        ]))))
                          ])),
                      Container(
                          margin: getMargin(left: 20, top: 31, right: 20),
                          padding: getPadding(
                              left: 21, top: 15, right: 21, bottom: 15),
                          decoration: AppDecoration.fill8.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            Container(
                                height: getVerticalSize(44),
                                width: getHorizontalSize(33),
                                margin: getMargin(bottom: 1),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVolumeRed700,
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(33),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgSignal,
                                                    height: getVerticalSize(13),
                                                    width:
                                                        getHorizontalSize(12),
                                                    alignment:
                                                        Alignment.centerRight),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text("PDF",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .labelMediumExtraBold))
                                              ]))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 4, bottom: 4),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Jamet kudasi - CV - UI/UX Designer",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray90004),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Row(children: [
                                            Text("867 Kb",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallBluegray30003),
                                            Container(
                                                height: getSize(2),
                                                width: getSize(2),
                                                margin: getMargin(
                                                    left: 5, top: 9, bottom: 4),
                                                decoration: BoxDecoration(
                                                    color:
                                                        appTheme.blueGray30003,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Padding(
                                                padding: getPadding(left: 5),
                                                child: Text(
                                                    "14 Feb 2022 at 11:30 am",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallBluegray30003))
                                          ]))
                                    ]))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustration,
                          height: getVerticalSize(151),
                          width: getHorizontalSize(152),
                          margin: getMargin(top: 19)),
                      Container(
                          margin: getMargin(top: 32),
                          decoration: AppDecoration.txtOutline,
                          child: Text("Successful",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleMediumBluegray80002)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text(
                              "Congratulations, your application has been sent",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      CustomElevatedButton(
                          text: "Find a similar job".toUpperCase(),
                          margin: getMargin(top: 38),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002dTL61
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(259),
                                          getVerticalSize(50)))),
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
                      CustomElevatedButton(
                          text: "Back to home".toUpperCase(),
                          margin: getMargin(top: 20, bottom: 5),
                          buttonStyle: CustomButtonStyles.outlineBluegray20026
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(259),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer_2)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
