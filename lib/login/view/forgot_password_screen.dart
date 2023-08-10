import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/login_button.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/custom_text_form_field.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../app/widgets/scroll_scaffold.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  // TextEditingController emailoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScrollScaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20,
            top: 24,
            right: 20,
            bottom: 24,
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
              SizedBox(height: 10),
              Container(
                width: 300,
                margin: EdgeInsets.only(
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
                height: 93,
                width: 118,
                margin: EdgeInsets.only(
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
                        margin: EdgeInsets.only(
                          left: 13,
                        ),
                        color: PrimaryColors.indigo900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder41,
                        ),
                        child: Container(
                          height: 82,
                          width: 82,
                          padding: EdgeInsets.only(
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
                                      12,
                                    ),
                                    border: Border.all(
                                      color: PrimaryColors.whiteA700,
                                      width: 5,
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
                                      SvgPicture.asset(
                                         ImageConstant.imgVector229,
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
                                            SvgPicture.asset(
                                                  ImageConstant.imgVector231,
                                              height: 4,
                                              width: 2,
                                            ),
                                            SvgPicture.asset(
                                                  ImageConstant.imgVector231,
                                              height: 4,
                                              width: 2,
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
                          margin: EdgeInsets.only(
                            left: 5,
                            top: 3,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(
                              (21),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(
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
                    SvgPicture.asset(
                      ImageConstant.imgQuestion,
                      height: 93,
                      width: 53,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
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
                // controller: emailoneController,
                margin: EdgeInsets.only(
                  left: 9,
                  top: 10,
                  right: 9,
                ),
                contentPadding: EdgeInsets.only(
                  left: 16,
                  top: 17,
                  right: 16,
                  bottom: 17,
                ),
                textStyle: theme.textTheme.bodySmall!,
                hintText: "Brandonelouis@gmail.com ",
                hintStyle: theme.textTheme.bodySmall!,
                filled: true,
                fillColor: PrimaryColors.whiteA700,
                defaultBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                enabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                focusedBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
                disabledBorderDecoration:
                    TextFormFieldStyleHelper.outlineIndigo2002dTL6,
              ),
              LoginButton(
                  text: "Reset Password".toUpperCase(), onPressed: () {}),
                  
              LoginButton(
                    
                text: "Back to Login".toUpperCase(),
                  loginButtonColors: LoginButtonColors.pink,
                  onPressed: () {}),
              
            ],
          ),
        ),
      ),
    );
  }
}
