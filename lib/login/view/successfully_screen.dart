import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/login/widgets/login_button.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

class SuccessfullyScreen extends StatelessWidget {
  const SuccessfullyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryColors.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20,
            top: 96,
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
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 298,
                  margin: EdgeInsets.only(
                    left: 35,
                    top: 2,
                  ),
                  child: Text(
                    "Your password has been updated, please change your password regularly to avoid this happening",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallBluegray700_1,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawmessagesentreq2klIndigo900,
                height: 117,
                width: 139,
                margin: EdgeInsets.only(
                  top: 50,
                ),
              ),
              Spacer(),
              LoginButton(text: "Continue".toUpperCase(), onPressed: () {}),
              LoginButton(
                  text: "Back to Login".toUpperCase(),
                  loginButtonColors: LoginButtonColors.pink,
                  onPressed: () {}),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
