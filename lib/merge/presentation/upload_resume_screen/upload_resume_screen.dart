import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';

class UploadResumeScreen extends StatelessWidget {
  const UploadResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray70001,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("Add Resume",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleMediumOpenSansGray90003)),
                      // Padding(
                      //     padding: getPadding(top: 29),
                      //     child: DottedBorder(
                      //         color: appTheme.blueGray300,
                      //         padding: EdgeInsets.only(
                      //             left: getHorizontalSize(1),
                      //             top: getVerticalSize(1),
                      //             right: getHorizontalSize(1),
                      //             bottom: getVerticalSize(1)),
                      //         strokeWidth: getHorizontalSize(1),
                      //         radius: Radius.circular(20),
                      //         borderType: BorderType.RRect,
                      //         dashPattern: [3, 3],
                      //         child: Container(
                      //             width: getHorizontalSize(335),
                      //             padding: getPadding(
                      //                 left: 20, top: 15, right: 20, bottom: 15),
                      //             decoration: AppDecoration.outline3.copyWith(
                      //                 borderRadius:
                      //                     BorderRadiusStyle.roundedBorder20),
                      //             child: Column(
                      //                 mainAxisSize: MainAxisSize.min,
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.start,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.start,
                      //                 children: [
                      //                   Row(children: [
                      //                     SizedBox(
                      //                         height: getVerticalSize(44),
                      //                         width: getHorizontalSize(33),
                      //                         child: Stack(
                      //                             alignment: Alignment.topRight,
                      //                             children: [
                      //                               CustomImageView(
                      //                                   svgPath: ImageConstant
                      //                                       .imgVolume,
                      //                                   height:
                      //                                       getVerticalSize(44),
                      //                                   width:
                      //                                       getHorizontalSize(
                      //                                           33),
                      //                                   alignment:
                      //                                       Alignment.center),
                      //                               Align(
                      //                                   alignment:
                      //                                       Alignment.topRight,
                      //                                   child: Column(
                      //                                       mainAxisSize:
                      //                                           MainAxisSize
                      //                                               .min,
                      //                                       crossAxisAlignment:
                      //                                           CrossAxisAlignment
                      //                                               .start,
                      //                                       mainAxisAlignment:
                      //                                           MainAxisAlignment
                      //                                               .start,
                      //                                       children: [
                      //                                         CustomImageView(
                      //                                             svgPath:
                      //                                                 ImageConstant
                      //                                                     .imgContrast,
                      //                                             height:
                      //                                                 getVerticalSize(
                      //                                                     13),
                      //                                             width:
                      //                                                 getHorizontalSize(
                      //                                                     12),
                      //                                             alignment:
                      //                                                 Alignment
                      //                                                     .centerRight),
                      //                                         Padding(
                      //                                             padding:
                      //                                                 getPadding(
                      //                                                     top:
                      //                                                         10),
                      //                                             child: Text(
                      //                                                 "PDF",
                      //                                                 overflow:
                      //                                                     TextOverflow
                      //                                                         .ellipsis,
                      //                                                 textAlign:
                      //                                                     TextAlign
                      //                                                         .left,
                      //                                                 style: CustomTextStyles
                      //                                                     .labelMediumExtraBold))
                      //                                       ]))
                      //                             ])),
                      //                     Expanded(
                      //                         child: Padding(
                      //                             padding: getPadding(
                      //                                 left: 19,
                      //                                 top: 5,
                      //                                 bottom: 1),
                      //                             child: Column(
                      //                                 mainAxisAlignment:
                      //                                     MainAxisAlignment
                      //                                         .start,
                      //                                 children: [
                      //                                   Text(
                      //                                       "Jamet kudasi - CV - UI/UX Designer",
                      //                                       overflow:
                      //                                           TextOverflow
                      //                                               .ellipsis,
                      //                                       textAlign:
                      //                                           TextAlign.left,
                      //                                       style: CustomTextStyles
                      //                                           .bodySmallOpenSansGray90003),
                      //                                   Padding(
                      //                                       padding: getPadding(
                      //                                           top: 2),
                      //                                       child: Row(
                      //                                           mainAxisAlignment:
                      //                                               MainAxisAlignment
                      //                                                   .center,
                      //                                           children: [
                      //                                             Text("867 Kb",
                      //                                                 overflow:
                      //                                                     TextOverflow
                      //                                                         .ellipsis,
                      //                                                 textAlign:
                      //                                                     TextAlign
                      //                                                         .left,
                      //                                                 style: CustomTextStyles
                      //                                                     .bodySmallOpenSansGray40002),
                      //                                             Container(
                      //                                                 height:
                      //                                                     getSize(
                      //                                                         2),
                      //                                                 width:
                      //                                                     getSize(
                      //                                                         2),
                      //                                                 margin: getMargin(
                      //                                                     left:
                      //                                                         5,
                      //                                                     top:
                      //                                                         9,
                      //                                                     bottom:
                      //                                                         6),
                      //                                                 decoration: BoxDecoration(
                      //                                                     color: appTheme
                      //                                                         .gray40001,
                      //                                                     borderRadius:
                      //                                                         BorderRadius.circular(getHorizontalSize(1)))),
                      //                                             Padding(
                      //                                                 padding: getPadding(
                      //                                                     left:
                      //                                                         5),
                      //                                                 child: Text(
                      //                                                     "14 Feb 2022 at 11:30 am",
                      //                                                     overflow: TextOverflow
                      //                                                         .ellipsis,
                      //                                                     textAlign: TextAlign
                      //                                                         .left,
                      //                                                     style:
                      //                                                         CustomTextStyles.bodySmallOpenSansGray40001))
                      //                                           ]))
                      //                                 ])))
                      //                   ]),
                      //                   Padding(
                      //                       padding: getPadding(top: 20),
                      //                       child: Row(children: [
                      //                         CustomImageView(
                      //                             svgPath:
                      //                                 ImageConstant.imgTrash,
                      //                             height: getSize(24),
                      //                             width: getSize(24)),
                      //                         Padding(
                      //                             padding: getPadding(
                      //                                 left: 10,
                      //                                 top: 3,
                      //                                 bottom: 3),
                      //                             child: Text("Remove file",
                      //                                 overflow:
                      //                                     TextOverflow.ellipsis,
                      //                                 textAlign: TextAlign.left,
                      //                                 style: CustomTextStyles
                      //                                     .bodySmallOpenSansRedA200))
                      //                       ]))
                      //                 ])))),
                      Container(
                          width: getHorizontalSize(307),
                          margin: getMargin(top: 15, right: 28),
                          child: Text(
                              "Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .bodySmallOpenSansBluegray30003)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Save".toUpperCase(),
                          margin: getMargin(bottom: 60),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002d
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(213),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer_2,
                          alignment: Alignment.center)
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
