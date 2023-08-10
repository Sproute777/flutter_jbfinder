import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 23,
        right: 20,
        bottom: 23,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFileOrange400,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 1,
              bottom: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallGray90001,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgPlusDeepOrangeA100,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
        ],
      ),
    );
  }
}
