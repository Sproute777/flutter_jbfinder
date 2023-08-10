import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_checkbox_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_elevated_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailoneController = TextEditingController();

  TextEditingController groupnineController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 21,
            top: 101,
            right: 21,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineLarge,
              ),
              Container(
                width: getHorizontalSize(
                  285,
                ),
                margin: getMargin(
                  left: 23,
                  top: 12,
                  right: 23,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBluegray700_1,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 11,
                    top: 62,
                  ),
                  child: Text(
                    "Email",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: emailoneController,
                margin: getMargin(
                  left: 8,
                  top: 10,
                  right: 8,
                ),
                contentPadding: getPadding(
                  left: 16,
                  top: 17,
                  right: 16,
                  bottom: 17,
                ),
                textStyle: theme.textTheme.bodySmall!,
                hintText: "Brandonelouis@gmail.com ",
                hintStyle: theme.textTheme.bodySmall!,
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: appTheme.whiteA700,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 11,
                    top: 14,
                  ),
                  child: Text(
                    "Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeOpenSans,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: groupnineController,
                margin: getMargin(
                  left: 8,
                  top: 9,
                  right: 8,
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 13,
                    right: 11,
                    bottom: 13,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmark,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                obscureText: true,
                filled: true,
                fillColor: appTheme.whiteA700,
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckboxButton(
                      text: "Remember me",
                      iconSize: getHorizontalSize(
                        24,
                      ),
                      value: isCheckbox,
                      padding: getPadding(
                        top: 3,
                        bottom: 3,
                      ),
                      textStyle: CustomTextStyles.bodySmallBluegray300,
                      onChange: (value) {
                        isCheckbox = value;
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 2,
                      ),
                      child: Text(
                        "Forgot Password ?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray90001,
                      ),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: "Login".toUpperCase(),
                margin: getMargin(
                  left: 36,
                  top: 32,
                  right: 31,
                ),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    50,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              CustomElevatedButton(
                text: "Sign in with Google".toUpperCase(),
                margin: getMargin(
                  left: 38,
                  top: 19,
                  right: 31,
                ),
                leftIcon: Container(
                  margin: getMargin(
                    right: 11,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        6,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle2,
                    height: getVerticalSize(
                      20,
                    ),
                    width: getHorizontalSize(
                      15,
                    ),
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    50,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleSmallIndigo900,
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                  bottom: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "You don't have an account yet?  ",
                        style: CustomTextStyles.bodySmallBluegray700,
                      ),
                      TextSpan(
                        text: "Sign up",
                        style:
                            CustomTextStyles.bodySmallErrorContainer.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
