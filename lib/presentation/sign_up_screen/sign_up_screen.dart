import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_checkbox_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_elevated_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // TextEditingController fullnameoneController = TextEditingController();

  // TextEditingController emailoneController = TextEditingController();

  // TextEditingController groupthreeController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 28,
            right: 28,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 12,
                ),
                child: Text(
                  "Create an Account",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              Container(
                width: 285,
                margin: EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
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
                  padding: EdgeInsets.only(
                    left: 1,
                    top: 62,
                  ),
                  child: Text(
                    "Full name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              CustomTextFormField(
                // controller: fullnameoneController,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                contentPadding: EdgeInsets.only(
                  left: 25,
                  top: 17,
                  right: 25,
                  bottom: 17,
                ),
                textStyle: theme.textTheme.bodySmall!,
                hintText: "Brandone Louis ",
                hintStyle: theme.textTheme.bodySmall!,
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: appTheme.whiteA700,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                    top: 13,
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
                // controller: emailoneController,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                contentPadding: EdgeInsets.only(
                  left: 15,
                  top: 17,
                  right: 15,
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
                  padding: EdgeInsets.only(
                    left: 2,
                    top: 14,
                  ),
                  child: Text(
                    "Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeGray900,
                  ),
                ),
              ),
              CustomTextFormField(
                // controller: groupthreeController,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                suffix: Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    top: 13,
                    right: 22,
                    bottom: 13,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmark,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 50,
                ),
                obscureText: true,
                filled: true,
                fillColor: appTheme.whiteA700,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1,
                  top: 20,
                  right: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckboxButton(
                      text: "Remember me",
                      iconSize: 24,
                      value: isCheckbox,
                      padding: EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      textStyle: CustomTextStyles.bodySmallBluegray300,
                      onChange: (value) {
                        isCheckbox = value;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
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
                text: "Sign up".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 26,
                  top: 20,
                  right: 27,
                ),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  
                    50,
                  
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              CustomElevatedButton(
                text: "Sign up with Google".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 27,
                  top: 15,
                  right: 28,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle220x15,
                    height: 20,
                    width: 15,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  
                    50,
                  
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 16,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "You don't have an account yet?  ",
                        style: CustomTextStyles.bodySmallBluegray700,
                      ),
                      TextSpan(
                        text: "Sign in",
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
