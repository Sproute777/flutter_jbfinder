import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/login_button.dart';

import '../../app/widgets/scroll_scaffold.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key})
      : super(
          key: key
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return ScrollScaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 20,
          top: 24,
          bottom: 24,
          right: 20,
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
              width: 300,
              margin: EdgeInsets.only(
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
            SvgPicture.asset(
              ImageConstant.imgUndrawmessagesentreq2kl,
              height: 109,
              width: 125,
            ),
           
LoginButton(

                text: "Open Your Email".toUpperCase(),
                onPressed: () {}),
            LoginButton(
                loginButtonColors: LoginButtonColors.pink,
                text: "Back to Login".toUpperCase(),
                onPressed: () {}),
            Padding(
              padding: EdgeInsets.only(
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
                      style: CustomTextStyles.bodySmallErrorContainer.copyWith(
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
    );
  }
}
