import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class NoResultsFoundScreen extends StatelessWidget {
  NoResultsFoundScreen({Key? key}) : super(key: key);

  TextEditingController designController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
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
                      CustomTextFormField(
                          controller: designController,
                          margin: getMargin(top: 34),
                          contentPadding:
                              getPadding(top: 11, right: 30, bottom: 11),
                          textStyle:
                              CustomTextStyles.bodySmallOpenSansBluegray30003_1,
                          hintText: "Design",
                          hintStyle:
                              CustomTextStyles.bodySmallOpenSansBluegray30003_1,
                          prefix: Container(
                              margin: getMargin(
                                  left: 15, top: 8, right: 10, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrasi,
                          height: getVerticalSize(176),
                          width: getHorizontalSize(156)),
                      Padding(
                          padding: getPadding(top: 59),
                          child: Text("No results found",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumOpenSans_1)),
                      Container(
                          width: getHorizontalSize(249),
                          margin: getMargin(
                              left: 42, top: 20, right: 42, bottom: 20),
                          child: Text(
                              "The search could not be found, please check spelling or write another word.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallOpenSans))
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
