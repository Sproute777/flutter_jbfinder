import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_icon_button.dart';
import 'package:the_s_application4/widgets/custom_outlined_button.dart';
import 'package:the_s_application4/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class Notifications1ItemWidget extends StatelessWidget {
  Notifications1ItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 20,
        right: 15,
        bottom: 20,
      ),
      decoration: AppDecoration.fill19.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 40,
            width: 40,
            margin: getMargin(
              bottom: 63,
            ),
            padding: getPadding(
              all: 7,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogle1,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioButton(
                    width: getHorizontalSize(
                      250,
                    ),
                    text: "Application sent",
                    value: "Application sent",
                    groupValue: radioGroup,
                    textStyle: CustomTextStyles.titleSmallGray90001,
                    isRightCheck: true,
                    onChange: (value) {
                      radioGroup = value;
                    },
                  ),
                  Container(
                    width: getHorizontalSize(
                      182,
                    ),
                    margin: getMargin(
                      top: 3,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Applications for ",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Google inc",
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: " have entered for company review",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      children: [
                        CustomOutlinedButton(
                          text: "Application details",
                          buttonStyle: CustomButtonStyles.outlineGray90004
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            getHorizontalSize(
                              143,
                            ),
                            getVerticalSize(
                              32,
                            ),
                          ))),
                          buttonTextStyle: CustomTextStyles.bodySmallGray90004,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 75,
                            top: 9,
                            bottom: 8,
                          ),
                          child: Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallBluegray3000310,
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
    );
  }
}
