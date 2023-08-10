import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';
import '../export.dart';

class AddResumeScreen extends StatelessWidget {
  const AddResumeScreen({Key? key}) : super(key: key);

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
                      // Container(
                      //     margin: getMargin(top: 30),
                      //     decoration: AppDecoration.outline2.copyWith(
                      //         borderRadius: BorderRadiusStyle.roundedBorder15),
                      //     child: DottedBorder(
                      //         color: appTheme.blueGray30001,
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
                      //                 left: 94, top: 25, right: 94, bottom: 25),
                      //             child: Row(
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.spaceBetween,
                      //                 children: [
                      //                   CustomImageView(
                      //                       svgPath: ImageConstant
                      //                           .imgUploadBlueGray80003,
                      //                       height: getSize(24),
                      //                       width: getSize(24),
                      //                       margin: getMargin(top: 1)),
                      //                   Padding(
                      //                       padding:
                      //                           getPadding(top: 6, bottom: 1),
                      //                       child: Text("Upload CV/Resume",
                      //                           overflow: TextOverflow.ellipsis,
                      //                           textAlign: TextAlign.left,
                      //                           style: CustomTextStyles
                      //                               .bodySmallOpenSansGray90003))
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
