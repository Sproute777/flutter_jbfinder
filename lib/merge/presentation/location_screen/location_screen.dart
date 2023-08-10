import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key}) : super(key: key);

  TextEditingController locationnameController = TextEditingController();

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
                          child: Text("Location",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      CustomTextFormField(
                          controller: locationnameController,
                          margin: getMargin(top: 31),
                          contentPadding: getPadding(top: 11, bottom: 11),
                          textStyle: CustomTextStyles.bodySmallGray90003,
                          hintText: "Cali",
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
                          padding: getPadding(top: 40),
                          child: Text("Califon, United States",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("California, United States",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30, bottom: 5),
                          child: Text("California City, United States",
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
