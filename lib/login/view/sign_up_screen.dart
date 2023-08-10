import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/login_button.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_text_form_field.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../app/widgets/scroll_scaffold.dart';
import '../widgets/login_checkbox.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // TextEditingController fullnameoneController = TextEditingController();

  // TextEditingController emailoneController = TextEditingController();

  // TextEditingController groupthreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ScrollScaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create an Account",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineLarge,
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
                  left: 11,
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
              fillColor: PrimaryColors.whiteA700,
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
              fillColor: PrimaryColors.whiteA700,
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
                child: SvgPicture.asset(
                  ImageConstant.imgCheckmark,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 50,
              ),
              obscureText: true,
              filled: true,
              fillColor: PrimaryColors.whiteA700,
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
                  LoginCheckbox(),
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
            LoginButton(
              text: "Sign up".toUpperCase(),
              onPressed: () {},
            ),
            LoginButton(
              text: "Sign up with Google".toUpperCase(),
              useGoogleIcon: true,
              loginButtonColors: LoginButtonColors.pink,
              onPressed: () {},
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

