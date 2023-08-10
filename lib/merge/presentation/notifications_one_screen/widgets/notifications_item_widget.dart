import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  const NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 17,
        right: 20,
        bottom: 17,
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
              top: 3,
              bottom: 44,
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
                  Text(
                    "Application sent",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                      right: 15,
                    ),
                    child: Text(
                      "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallBluegray3000311,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "Delete",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallRedA20001,
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
