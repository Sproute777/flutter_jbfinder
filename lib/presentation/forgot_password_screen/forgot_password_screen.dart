import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_elevated_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 92,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Forgot Password?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineLarge,
              ),
              Container(
                width: getHorizontalSize(
                  301,
                ),
                margin: getMargin(
                  left: 17,
                  top: 9,
                  right: 16,
                ),
                child: Text(
                  "To reset your password, you need your email or mobile number that can be authenticated",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBluegray700_1,
                ),
              ),
              Container(
                height: getVerticalSize(
                  93,
                ),
                width: getHorizontalSize(
                  118,
                ),
                margin: getMargin(
                  top: 53,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          left: 13,
                        ),
                        color: appTheme.indigo900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder41,
                        ),
                        child: Container(
                          height: getSize(
                            82,
                          ),
                          width: getSize(
                            82,
                          ),
                          padding: getPadding(
                            left: 19,
                            top: 23,
                            right: 19,
                            bottom: 23,
                          ),
                          decoration: AppDecoration.fill.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder41,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: appTheme.whiteA700,
                                      width: getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: getSize(
                                    22,
                                  ),
                                  width: getSize(
                                    22,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgVector229,
                                        height: getSize(
                                          22,
                                        ),
                                        width: getSize(
                                          22,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector231,
                                              height: getVerticalSize(
                                                4,
                                              ),
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                              margin: getMargin(
                                                top: 4,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector231,
                                              height: getVerticalSize(
                                                4,
                                              ),
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                              margin: getMargin(
                                                left: 4,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: getSize(
                            42,
                          ),
                          width: getSize(
                            42,
                          ),
                          margin: getMargin(
                            left: 5,
                            top: 3,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                21,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: getPadding(
                          left: 16,
                          top: 6,
                          right: 16,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.fill3.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder21,
                        ),
                        child: Text(
                          "?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgQuestion,
                      height: getVerticalSize(
                        93,
                      ),
                      width: getHorizontalSize(
                        53,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 71,
                  ),
                  child: Text(
                    "Email",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeGray900,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: emailoneController,
                margin: getMargin(
                  left: 9,
                  top: 10,
                  right: 9,
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
                filled: true,
                fillColor: appTheme.whiteA700,
                defaultBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                enabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                focusedBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                disabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
              ),
              CustomElevatedButton(
                text: "Reset Password".toUpperCase(),
                margin: getMargin(
                  left: 9,
                  top: 29,
                  right: 9,
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
                text: "Back to Login".toUpperCase(),
                margin: getMargin(
                  left: 9,
                  top: 29,
                  right: 9,
                  bottom: 5,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    50,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
