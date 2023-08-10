import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class AddAppreciationScreen extends StatelessWidget {
  AddAppreciationScreen({Key? key}) : super(key: key);

  TextEditingController rectanglefiftynController = TextEditingController();

  TextEditingController group378Controller = TextEditingController();

  TextEditingController rectanglefiftynController1 = TextEditingController();

  TextEditingController additionalinfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    var appTheme;
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
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
                          padding: getPadding(top: 41),
                          child: Text("Add Appreciation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray90003)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Award name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: rectanglefiftynController,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("Category/Achievement achieved",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: group378Controller,
                          margin: getMargin(top: 9),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("End date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          width: getHorizontalSize(160),
                          controller: rectanglefiftynController1,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Description",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: additionalinfoController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          textStyle: CustomTextStyles.bodySmallBluegray30003,
                          hintText: "Write additional information here",
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          maxLines: 9,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      CustomElevatedButton(
                          text: "Save".toUpperCase(),
                          margin: getMargin(top: 86, bottom: 5),
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
