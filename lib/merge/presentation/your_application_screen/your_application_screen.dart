import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class YourApplicationScreen extends StatelessWidget {
  const YourApplicationScreen({Key? key}) : super(key: key);

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
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text("Your application",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          margin: getMargin(top: 36),
                          padding: getPadding(
                              left: 15, top: 20, right: 15, bottom: 20),
                          decoration: AppDecoration.fill10.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(left: 1),
                                    padding: getPadding(all: 7),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGoogle1)),
                                Padding(
                                    padding: getPadding(left: 1, top: 20),
                                    child: Text("UI/UX Designer",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 1, top: 5),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Google inc",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallOpenSansGray90004),
                                          Container(
                                              height: getSize(2),
                                              width: getSize(2),
                                              margin: getMargin(
                                                  left: 5, top: 8, bottom: 7),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray90004,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Text("California, USA",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSansGray90004))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(3),
                                              width: getSize(3),
                                              margin:
                                                  getMargin(top: 5, bottom: 8),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "Shipped on February 14, 2022 at 11:30 am",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSans))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(3),
                                              width: getSize(3),
                                              margin:
                                                  getMargin(top: 5, bottom: 8),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "Updated by recruiter 8 hours ago",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSans))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 1, top: 27),
                                    child: Text("Job details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(3),
                                              width: getSize(3),
                                              margin:
                                                  getMargin(top: 5, bottom: 7),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text("Senior designer",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Row(children: [
                                      Container(
                                          height: getSize(3),
                                          width: getSize(3),
                                          margin: getMargin(top: 7, bottom: 5),
                                          decoration: BoxDecoration(
                                              color: appTheme.gray40001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(1)))),
                                      Padding(
                                          padding: getPadding(left: 10),
                                          child: Text("Full time",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodySmall))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(3),
                                              width: getSize(3),
                                              margin:
                                                  getMargin(top: 6, bottom: 7),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "1-3 Years work experience",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 30),
                                    child: Text("Application details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Row(children: [
                                      Container(
                                          height: getSize(3),
                                          width: getSize(3),
                                          margin: getMargin(top: 6, bottom: 7),
                                          decoration: BoxDecoration(
                                              color: appTheme.gray40001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(1)))),
                                      Padding(
                                          padding: getPadding(left: 10),
                                          child: Text("CV/Resume",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallOpenSans))
                                    ])),
                                // Container(
                                //     margin: getMargin(top: 8),
                                //     decoration: AppDecoration.outline3.copyWith(
                                //         borderRadius:
                                //             BorderRadiusStyle.roundedBorder15),
                                //     child: DottedBorder(
                                //         color: appTheme.blueGray300,
                                //         padding: EdgeInsets.only(
                                //             left: getHorizontalSize(1),
                                //             top: getVerticalSize(1),
                                //             right: getHorizontalSize(1),
                                //             bottom: getVerticalSize(1)),
                                //         strokeWidth: getHorizontalSize(1),
                                //         radius: Radius.circular(15),
                                //         borderType: BorderType.RRect,
                                //         dashPattern: [3, 3],
                                //         child: Padding(
                                //             padding: getPadding(
                                //                 left: 9,
                                //                 top: 15,
                                //                 right: 9,
                                //                 bottom: 15),
                                //             child: Row(
                                //                 mainAxisAlignment:
                                //                     MainAxisAlignment.end,
                                //                 children: [
                                //                   SizedBox(
                                //                       height:
                                //                           getVerticalSize(44),
                                //                       width:
                                //                           getHorizontalSize(33),
                                //                       child: Stack(
                                //                           alignment: Alignment
                                //                               .topRight,
                                //                           children: [
                                //                             CustomImageView(
                                //                                 svgPath:
                                //                                     ImageConstant
                                //                                         .imgVolume,
                                //                                 height:
                                //                                     getVerticalSize(
                                //                                         44),
                                //                                 width:
                                //                                     getHorizontalSize(
                                //                                         33),
                                //                                 alignment:
                                //                                     Alignment
                                //                                         .center),
                                //                             Align(
                                //                                 alignment:
                                //                                     Alignment
                                //                                         .topRight,
                                //                                 child: Column(
                                //                                     mainAxisSize:
                                //                                         MainAxisSize
                                //                                             .min,
                                //                                     crossAxisAlignment:
                                //                                         CrossAxisAlignment
                                //                                             .start,
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .start,
                                //                                     children: [
                                //                                       CustomImageView(
                                //                                           svgPath: ImageConstant
                                //                                               .imgContrast,
                                //                                           height: getVerticalSize(
                                //                                               13),
                                //                                           width: getHorizontalSize(
                                //                                               12),
                                //                                           alignment:
                                //                                               Alignment.centerRight),
                                //                                       Padding(
                                //                                           padding: getPadding(
                                //                                               top:
                                //                                                   10),
                                //                                           child: Text(
                                //                                               "PDF",
                                //                                               overflow: TextOverflow.ellipsis,
                                //                                               textAlign: TextAlign.left,
                                //                                               style: CustomTextStyles.labelMediumExtraBold))
                                //                                     ]))
                                //                           ])),
                                //                   Expanded(
                                //                       child: Padding(
                                //                           padding: getPadding(
                                //                               left: 20,
                                //                               top: 4,
                                //                               bottom: 5),
                                //                           child: Column(
                                //                               crossAxisAlignment:
                                //                                   CrossAxisAlignment
                                //                                       .start,
                                //                               mainAxisAlignment:
                                //                                   MainAxisAlignment
                                //                                       .start,
                                //                               children: [
                                //                                 Text(
                                //                                     "Jamet kudasi - CV - UI/UX Designer.PDF",
                                //                                     overflow:
                                //                                         TextOverflow
                                //                                             .ellipsis,
                                //                                     textAlign:
                                //                                         TextAlign
                                //                                             .left,
                                //                                     style: CustomTextStyles
                                //                                         .bodySmallGray90003),
                                //                                 Padding(
                                //                                     padding:
                                //                                         getPadding(
                                //                                             top:
                                //                                                 3),
                                //                                     child: Row(
                                //                                         children: [
                                //                                           Text(
                                //                                               "867 Kb",
                                //                                               overflow: TextOverflow.ellipsis,
                                //                                               textAlign: TextAlign.left,
                                //                                               style: CustomTextStyles.bodySmallGray40002),
                                //                                           Container(
                                //                                               height: getSize(2),
                                //                                               width: getSize(2),
                                //                                               margin: getMargin(left: 5, top: 6, bottom: 5),
                                //                                               decoration: BoxDecoration(color: appTheme.gray40001, borderRadius: BorderRadius.circular(getHorizontalSize(1)))),
                                //                                           Padding(
                                //                                               padding: getPadding(left: 5),
                                //                                               child: Text("14 Feb 2022 at 11:30 am", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallGray40001))
                                //                                         ]))
                                //                               ])))
                                //                 ]))))
                              ])),
                      CustomElevatedButton(
                          text: "Apply for more jobs".toUpperCase(),
                          margin: getMargin(top: 23, bottom: 5),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002d
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(213),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer_2)
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
