import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class EditAddAJobItemWidget extends StatelessWidget {
  const EditAddAJobItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 18,
        right: 20,
        bottom: 18,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: getPadding(
                  top: 2,
                  bottom: 2,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleSmallGray90001,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgEdit,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 7,
              bottom: 1,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOpenSans,
            ),
          ),
        ],
      ),
    );
  }
}
