import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InstitutionNameScreen extends StatelessWidget {
  InstitutionNameScreen({Key? key}) : super(key: key);

  TextEditingController institutionnameController = TextEditingController();

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
                          padding: getPadding(top: 39),
                          child: Text("Institution name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      CustomTextFormField(
                          controller: institutionnameController,
                          margin: getMargin(top: 31),
                          contentPadding: getPadding(top: 11, bottom: 11),
                          textStyle: CustomTextStyles.bodySmallGray90003,
                          hintText: "University of",
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
                          child: Text("University of Oxford",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text(
                              "National University of Lesotho International School",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("University of Chester CE Academy",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("University of Chester Academy Northwich",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("University of Birmingham School",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Bloomsburg University of Pennsylvania",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("California University of Pennsylvania",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(left: 2, top: 30),
                          child: Text(" ClarionUniversity of Pennsylvania",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30, bottom: 5),
                          child: Text(
                              "East Stroundsburg State University of Pennsylvania",
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
