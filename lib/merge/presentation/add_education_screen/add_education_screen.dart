import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class AddEducationScreen extends StatelessWidget {
  AddEducationScreen({Key? key}) : super(key: key);

  TextEditingController rectanglefiftynController = TextEditingController();

  TextEditingController rectanglefiftynController1 = TextEditingController();

  TextEditingController group201Controller = TextEditingController();

  TextEditingController rectanglefiftynController2 = TextEditingController();

  TextEditingController rectanglefiftynController3 = TextEditingController();

  bool isCheckbox = false;

  TextEditingController additionalinforController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray80003,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(top: 3),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("Add Education",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Level of education",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: rectanglefiftynController,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Institution name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: rectanglefiftynController1,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Field of study",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: group201Controller,
                          margin: getMargin(top: 9),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(right: 7),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Start date",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(160),
                                                  controller:
                                                      rectanglefiftynController2,
                                                  margin: getMargin(top: 10),
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer)
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 7),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("End date",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(160),
                                                  controller:
                                                      rectanglefiftynController3,
                                                  margin: getMargin(top: 10),
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer)
                                            ])))
                              ])),
                      CustomCheckboxButton(
                          text: "This is my position now",
                          iconSize: getHorizontalSize(24),
                          value: isCheckbox,
                          margin: getMargin(top: 20),
                          padding: getPadding(top: 3, bottom: 3),
                          textStyle: theme.textTheme.bodySmall!,
                          onChange: (value) {
                            isCheckbox = value;
                          }),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Description",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: additionalinforController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          textStyle: CustomTextStyles.bodySmallBluegray30003,
                          hintText: "Write additional information here",
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          maxLines: 9,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Save".toUpperCase(),
                margin: getMargin(left: 81, right: 81, bottom: 20),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(getHorizontalSize(213), getVerticalSize(50)))),
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
}
