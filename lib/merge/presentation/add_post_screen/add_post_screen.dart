import 'package:flutter/material.dart';

import '../export.dart';

class AddPostScreen extends StatelessWidget {
  AddPostScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController posttitleoneController = TextEditingController();

  TextEditingController descriptiononeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 18,
            top: 42,
            right: 18,
            bottom: 42,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 2,
                ),
                child: Text(
                  "Add Post",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumGray90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 37,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: getSize(
                        56,
                      ),
                      width: getSize(
                        56,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          28,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 11,
                        bottom: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Orlando Diggs",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "California, USA",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 28,
                ),
                child: Text(
                  "Post title",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeOpenSans,
                ),
              ),
              CustomTextFormField(
                controller: posttitleoneController,
                margin: getMargin(
                  left: 2,
                  top: 9,
                ),
                contentPadding: getPadding(
                  left: 20,
                  top: 12,
                  right: 20,
                  bottom: 12,
                ),
                textStyle: CustomTextStyles.bodySmallBluegray30003,
                hintText: "Write the title of your post here",
                hintStyle: CustomTextStyles.bodySmallBluegray30003,
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer,
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 26,
                ),
                child: Text(
                  "Description",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              CustomTextFormField(
                controller: descriptiononeController,
                margin: getMargin(
                  left: 2,
                  top: 9,
                  bottom: 5,
                ),
                contentPadding: getPadding(
                  left: 20,
                  top: 18,
                  right: 20,
                  bottom: 18,
                ),
                textStyle: CustomTextStyles.bodySmallBluegray30003,
                hintText: "What do you want to talk about?",
                hintStyle: CustomTextStyles.bodySmallBluegray30003,
                maxLines: 9,
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 20,
            right: 20,
            bottom: 33,
          ),
          decoration: AppDecoration.outline6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgInstagram,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUserOrange40024x24,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  left: 20,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 5,
                  bottom: 1,
                ),
                child: Text(
                  "Add hashtag",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeOpenSansOrange400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
