import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class EndDateDialog extends StatelessWidget {
  const EndDateDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(
        335,
      ),
      padding: getPadding(
        left: 30,
        top: 20,
        right: 30,
        bottom: 20,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVector56Gray700,
            height: getVerticalSize(
              4,
            ),
            width: getHorizontalSize(
              30,
            ),
            margin: getMargin(
              top: 5,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 46,
            ),
            child: Text(
              "End Date",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleMediumOpenSans_1,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 57,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomElevatedButton(
                    text: "Jul",
                    margin: getMargin(
                      top: 28,
                      bottom: 28,
                    ),
                    buttonStyle: CustomButtonStyles.fillGray400.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        30,
                      ),
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 5,
                  ),
                  padding: getPadding(
                    left: 12,
                    top: 41,
                    right: 12,
                    bottom: 41,
                  ),
                  decoration: AppDecoration.fill9.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "Aug",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          CustomTextStyles.titleSmallOpenSansOnPrimaryContainer,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: CustomElevatedButton(
                    text: "Sep",
                    margin: getMargin(
                      left: 5,
                      top: 28,
                      bottom: 28,
                    ),
                    buttonStyle: CustomButtonStyles.fillGray400.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        30,
                      ),
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                  ),
                  child: SizedBox(
                    height: getVerticalSize(
                      108,
                    ),
                    child: VerticalDivider(
                      width: getHorizontalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.gray30003,
                      indent: getHorizontalSize(
                        18,
                      ),
                      endIndent: getHorizontalSize(
                        12,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: getHorizontalSize(
                      30,
                    ),
                    margin: getMargin(
                      left: 18,
                      top: 28,
                      bottom: 28,
                    ),
                    padding: getPadding(
                      left: 3,
                      top: 18,
                      right: 3,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.txtFill5.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "2012",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 5,
                  ),
                  padding: getPadding(
                    left: 8,
                    top: 43,
                    right: 8,
                    bottom: 43,
                  ),
                  decoration: AppDecoration.fill9.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "2013",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          CustomTextStyles.titleSmallOpenSansOnPrimaryContainer,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: getHorizontalSize(
                      30,
                    ),
                    margin: getMargin(
                      left: 5,
                      top: 28,
                      bottom: 28,
                    ),
                    padding: getPadding(
                      left: 3,
                      top: 18,
                      right: 3,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.txtFill5.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "2014",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            text: "Save".toUpperCase(),
            margin: getMargin(
              left: 29,
              top: 57,
              right: 29,
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
          CustomElevatedButton(
            text: "Cancel".toUpperCase(),
            margin: getMargin(
              left: 29,
              top: 10,
              right: 29,
            ),
            buttonStyle: CustomButtonStyles.fillDeeppurple10001.copyWith(
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
