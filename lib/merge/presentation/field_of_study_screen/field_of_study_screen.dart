import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FieldOfStudyScreen extends StatelessWidget {
  FieldOfStudyScreen({Key? key}) : super(key: key);

  TextEditingController informationController = TextEditingController();

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
                          child: Text("Field of study",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      CustomTextFormField(
                          controller: informationController,
                          margin: getMargin(top: 29),
                          contentPadding: getPadding(top: 11, bottom: 11),
                          textStyle: CustomTextStyles.bodySmallGray90003,
                          hintText: "Information",
                          hintStyle: CustomTextStyles.bodySmallGray90003,
                          prefix: Container(
                              margin: getMargin(
                                  left: 15, top: 8, right: 10, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 8, right: 10, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          suffixConstraints:
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
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Information Technology",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Business Information Systems",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Computer Information Science",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Computer Information Systems",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Healt Information Management",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("History and Information",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text("Information Assurance",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Information Security",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Information Systems",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30, bottom: 5),
                          child: Text("Information Systems Major",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall))
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
