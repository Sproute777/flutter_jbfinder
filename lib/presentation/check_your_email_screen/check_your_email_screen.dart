import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_elevated_button.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 28,
            top: 91,
            right: 28,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Check Your Email",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineLarge,
              ),
              Container(
                width: getHorizontalSize(
                  301,
                ),
                margin: getMargin(
                  left: 9,
                  top: 8,
                  right: 8,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We have sent the reset password to the email address ",
                        style: CustomTextStyles.bodySmallBluegray700,
                      ),
                      TextSpan(
                        text: "brandonelouis@gmial.com",
                        style: CustomTextStyles.bodySmallGray900,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawmessagesentreq2kl,
                height: getVerticalSize(
                  109,
                ),
                width: getHorizontalSize(
                  125,
                ),
                margin: getMargin(
                  top: 48,
                ),
              ),
              CustomElevatedButton(
                text: "Open Your Email".toUpperCase(),
                margin: getMargin(
                  top: 94,
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
                  top: 15,
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
              Padding(
                padding: getPadding(
                  top: 31,
                  bottom: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "You have not received the email?  ",
                        style: CustomTextStyles.bodySmallGray900,
                      ),
                      TextSpan(
                        text: "Resend",
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
