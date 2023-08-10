import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class ListgoogleoneItemWidget extends StatelessWidget {
  const ListgoogleoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        bottom: 514,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGoogle1,
            height: getSize(
              30,
            ),
            width: getSize(
              30,
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.bodySmallGray90004,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Company",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallBluegray3000310,
                    ),
                    Container(
                      height: getSize(
                        2,
                      ),
                      width: getSize(
                        2,
                      ),
                      margin: getMargin(
                        left: 5,
                        top: 8,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray30003,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                      ),
                      child: Text(
                        "Internet",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallBluegray3000310,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
