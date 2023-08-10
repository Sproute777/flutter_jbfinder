import 'package:flutter/material.dart';

import '../export.dart';
// ignore_for_file: must_be_immutable
class OralDialog extends StatelessWidget {
  OralDialog({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = [
    "lbl_level_0",
    "lbl_level_1",
    "lbl_level_2",
    "lbl_level_3",
    "lbl_level_4",
    "lbl_level_5",
    "lbl_level_6",
    "lbl_level_7",
    "lbl_level_8",
    "lbl_level_9",
    "lbl_level_102"
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(
        335,
      ),
      padding: getPadding(
        all: 30,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVector56Gray700,
            height: getVerticalSize(
              4,
            ),
            width: getHorizontalSize(
              30,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 36,
            ),
            child: Column(
              children: [
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 0",
                  value: radioList[0],
                  groupValue: radioGroup,
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 1",
                  value: radioList[1],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 2",
                  value: radioList[2],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 3",
                  value: radioList[3],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 4",
                  value: radioList[4],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 5",
                  value: radioList[5],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 6",
                  value: radioList[6],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 7",
                  value: radioList[7],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 8",
                  value: radioList[8],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 9",
                  value: radioList[9],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                CustomRadioButton(
                  width: getHorizontalSize(
                    275,
                  ),
                  text: "Level 10",
                  iconSize: getHorizontalSize(
                    18,
                  ),
                  value: radioList[10],
                  groupValue: radioGroup,
                  margin: getMargin(
                    top: 24,
                  ),
                  textStyle: theme.textTheme.bodyMedium!,
                  isRightCheck: true,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            text: "Done".toUpperCase(),
            margin: getMargin(
              top: 55,
            ),
            buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              double.maxFinite,
              getVerticalSize(
                50,
              ),
            ))),
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
          ),
        ],
      ),
    );
  }
}
