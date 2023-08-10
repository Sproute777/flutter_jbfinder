import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_elevated_button.dart';

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
        backgroundColor: appTheme.gray50,
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
              CustomElevatedButton(
                text: "Continue".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  
                    50,
                  
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              CustomElevatedButton(
                text: "Back to Login".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 8,
                  top: 15,
                  right: 8,
                  bottom: 15,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  
                    50,
                  
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
