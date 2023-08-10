import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SpecializationItemWidget extends StatelessWidget {
  const SpecializationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 46,
        top: 25,
        right: 46,
        bottom: 25,
      ),
      decoration: AppDecoration.fill9.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 67,
            width: 67,
            padding: getPadding(
              all: 18,
            ),
            decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
            child: CustomImageView(
              svgPath: ImageConstant.imgTrashOrange400,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 19,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallOnPrimaryContainer_2,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
            ),
          ),
        ],
      ),
    );
  }
}
