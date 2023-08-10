import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class OptionsOneBottomsheet extends StatelessWidget {
  OptionsOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController settingsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          padding: getPadding(
            left: 20,
            top: 30,
            right: 20,
            bottom: 30,
          ),
          decoration: AppDecoration.fill10.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgVector56,
                height: getVerticalSize(
                  4,
                ),
                width: getHorizontalSize(
                  30,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 46,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgTrashBlueGray80003,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "Delete",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumDMSansBluegray80003,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 25,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgNotifications,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "Turn off notifications",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumDMSansBluegray80003,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                controller: settingsController,
                margin: getMargin(
                  top: 12,
                  bottom: 14,
                ),
                contentPadding: getPadding(
                  top: 15,
                  right: 30,
                  bottom: 15,
                ),
                textStyle:
                    CustomTextStyles.bodyMediumDMSansOnPrimaryContainer_1,
                hintText: "Setting",
                hintStyle:
                    CustomTextStyles.bodyMediumDMSansOnPrimaryContainer_1,
                prefix: Container(
                  margin: getMargin(
                    left: 15,
                    top: 13,
                    right: 15,
                    bottom: 13,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSettingsOnprimarycontainer,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                filled: true,
                fillColor: theme.colorScheme.primary,
                defaultBorderDecoration: TextFormFieldStyleHelper.fillPrimary,
                enabledBorderDecoration: TextFormFieldStyleHelper.fillPrimary,
                focusedBorderDecoration: TextFormFieldStyleHelper.fillPrimary,
                disabledBorderDecoration: TextFormFieldStyleHelper.fillPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
