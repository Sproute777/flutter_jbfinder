import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditAppreciationScreen extends StatelessWidget {
  EditAppreciationScreen({Key? key}) : super(key: key);

  TextEditingController rwsController = TextEditingController();

  TextEditingController youngscientistController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController additionalinfoController = TextEditingController();

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
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Edit Appreciation",
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
                          controller: rwsController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Wireless Symposium (RWS)",
                          hintStyle: theme.textTheme.bodySmall!,
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
                          controller: youngscientistController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Young Scientist",
                          hintStyle: theme.textTheme.bodySmall!,
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
                          controller: zipcodeController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "2014",
                          hintStyle: theme.textTheme.bodySmall!,
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
                      Padding(
                          padding: getPadding(top: 86, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Remove".toUpperCase(),
                                        margin: getMargin(right: 7),
                                        buttonStyle: CustomButtonStyles
                                            .fillDeeppurple10001
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2)),
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Save".toUpperCase(),
                                        margin: getMargin(left: 7),
                                        buttonStyle: CustomButtonStyles
                                            .outlineIndigo2002d
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2))
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
