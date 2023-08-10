import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class PostingItemWidget extends StatelessWidget {
  const PostingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Posting",
            margin: getMargin(
              right: 5,
            ),
            buttonStyle: CustomButtonStyles.fillDeeppurple10001.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              double.maxFinite,
              getVerticalSize(
                40,
              ),
            ))),
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "My connection",
            margin: getMargin(
              left: 5,
            ),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              double.maxFinite,
              getVerticalSize(
                40,
              ),
            ))),
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
          ),
        ),
      ],
    );
  }
}
