import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/login_button.dart';

import '../../app/widgets/scroll_scaffold.dart';

// excelent adaptation
class SuccessfullyScreen extends StatelessWidget {
  const SuccessfullyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ScrollScaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
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
                  "Successfully",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 240,
                    child: Text(
                      "Your password has been updated, please change your password regularly to avoid this happening",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallBluegray700_1,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(
                    ImageConstant.imgUndrawmessagesentreq2klIndigo900,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 54),
                LoginButton(text: "Continue".toUpperCase(), onPressed: () {}),
                LoginButton(
                    text: "Back to Login".toUpperCase(),
                    loginButtonColors: LoginButtonColors.pink,
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
