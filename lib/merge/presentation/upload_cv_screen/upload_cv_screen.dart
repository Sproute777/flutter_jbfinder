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
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UploadCvScreen extends StatelessWidget {
  UploadCvScreen({Key? key}) : super(key: key);

  TextEditingController whyrightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 25, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(215),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.topLeft,
                                margin: getMargin(left: 20, top: 5),
                                onTap: () {
                                  onTapImgArrowleft(context);
                                }),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(24),
                                          leadingWidth: 46,
                                          leading: AppbarImage(
                                              height: getSize(24),
                                              width: getSize(24),
                                              svgPath: ImageConstant
                                                  .imgArrowleftGray90002,
                                              margin: getMargin(left: 22),
                                              onTap: () {
                                                onTapArrowleftone(context);
                                              }),
                                          actions: [
                                            AppbarImage(
                                                height: getSize(24),
                                                width: getSize(24),
                                                svgPath: ImageConstant
                                                    .imgOverflowmenuGray90002,
                                                margin: getMargin(
                                                    left: 20, right: 20))
                                          ]),
                                      Container(
                                          height: getVerticalSize(177),
                                          width: double.maxFinite,
                                          margin: getMargin(top: 14),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 29,
                                                            top: 19,
                                                            right: 29,
                                                            bottom: 19),
                                                        decoration:
                                                            AppDecoration.fill6,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              16),
                                                                  child: Text(
                                                                      "UI/UX Designer",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: CustomTextStyles
                                                                          .titleMediumGray90002)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              14),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 1),
                                                                            child: Text("Google", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                        Container(
                                                                            height: getSize(
                                                                                7),
                                                                            width: getSize(
                                                                                7),
                                                                            margin: getMargin(
                                                                                left: 22,
                                                                                top: 9,
                                                                                bottom: 6),
                                                                            decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 32, bottom: 1),
                                                                            child: Text("California", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                        Container(
                                                                            height: getSize(
                                                                                7),
                                                                            width: getSize(
                                                                                7),
                                                                            margin: getMargin(
                                                                                left: 32,
                                                                                top: 9,
                                                                                bottom: 6),
                                                                            decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 24, top: 1),
                                                                            child: Text("1 day ago", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))
                                                                      ]))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: appTheme
                                                            .lightBlue100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder42),
                                                        child: Container(
                                                            height: getSize(84),
                                                            width: getSize(84),
                                                            padding: getPadding(
                                                                all: 14),
                                                            decoration: AppDecoration
                                                                .fill2
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder42),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGoogle1,
                                                                      height:
                                                                          getSize(
                                                                              54),
                                                                      width:
                                                                          getSize(
                                                                              54),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))))
                                              ]))
                                    ]))
                          ])),
                      Container(
                          padding: getPadding(
                              left: 20, top: 11, right: 20, bottom: 11),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Upload CV",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Text(
                                        "Add your CV/Resume to apply for a job",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                // Container(
                                //     margin: getMargin(top: 19),
                                //     decoration: AppDecoration.outline2.copyWith(
                                //         borderRadius:
                                //             BorderRadiusStyle.roundedBorder15),
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
                                //                 left: 94,
                                //                 top: 25,
                                //                 right: 94,
                                //                 bottom: 25),
                                //             child: Row(
                                //                 mainAxisAlignment:
                                //                     MainAxisAlignment
                                //                         .spaceBetween,
                                //                 children: [
                                //                   CustomImageView(
                                //                       svgPath: ImageConstant
                                //                           .imgDownload,
                                //                       height: getSize(24),
                                //                       width: getSize(24),
                                //                       margin:
                                //                           getMargin(top: 1)),
                                //                   Padding(
                                //                       padding: getPadding(
                                //                           top: 5, bottom: 3),
                                //                       child: Text(
                                //                           "Upload CV/Resume",
                                //                           overflow: TextOverflow
                                //                               .ellipsis,
                                //                           textAlign:
                                //                               TextAlign.left,
                                //                           style: CustomTextStyles
                                //                               .bodySmallGray90004))
                                //                 ])))),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text("Information",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                CustomTextFormField(
                                    controller: whyrightController,
                                    margin: getMargin(top: 15, bottom: 5),
                                    contentPadding: getPadding(all: 20),
                                    textStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    hintText:
                                        "Explain why you are the right person for this job",
                                    hintStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    maxLines: 14,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineIndigo2002d,
                                    enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineIndigo2002d,
                                    focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineIndigo2002d,
                                    disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineIndigo2002d)
                              ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Apply Now".toUpperCase(),
                margin: getMargin(left: 29, right: 29, bottom: 36),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(50)))),
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer_2)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
