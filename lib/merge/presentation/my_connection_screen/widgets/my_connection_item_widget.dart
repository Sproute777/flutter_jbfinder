import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class MyConnectionItemWidget extends StatelessWidget {
  const MyConnectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 30,
        top: 15,
        right: 30,
        bottom: 15,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 46,
            width: 46,
            margin: getMargin(
              top: 10,
            ),
            padding: getPadding(
              all: 8,
            ),
            decoration: IconButtonStyleHelper.fillYellowA70087,
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogle1,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 21,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallGray90002,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "1M Followers",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOpenSansBluegray30003_1,
            ),
          ),
          CustomOutlinedButton(
            text: "Follow",
            margin: getMargin(
              top: 14,
            ),
            buttonStyle: CustomButtonStyles.outlineOnPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              getHorizontalSize(
                100,
              ),
              getVerticalSize(
                30,
              ),
            ))),
            buttonTextStyle: CustomTextStyles.bodySmallOpenSansGray90002,
          ),
        ],
      ),
    );
  }
}
