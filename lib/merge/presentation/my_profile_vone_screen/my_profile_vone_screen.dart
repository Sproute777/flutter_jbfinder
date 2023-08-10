import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:the_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_radio_button.dart';
import 'package:the_s_application4/widgets/custom_text_form_field.dart';

class MyProfileVoneScreen extends StatelessWidget {
  MyProfileVoneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editprofileController = TextEditingController();

  TextEditingController brandonnameController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_male", "lbl_female"];

  TextEditingController emailController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController locationoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  top: 23,
                  bottom: 23,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup84,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        80,
                      ),
                      leadingWidth: 87,
                      leading: AppbarCircleimage1(
                        imagePath: ImageConstant.imgImage60x60,
                        margin: getMargin(
                          left: 27,
                          top: 17,
                        ),
                      ),
                      actions: [
                        AppbarImage(
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          svgPath: ImageConstant.imgShareOnprimarycontainer,
                          margin: getMargin(
                            left: 23,
                            right: 53,
                          ),
                        ),
                        AppbarImage(
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          svgPath: ImageConstant.imgSettingsOnprimarycontainer,
                          margin: getMargin(
                            left: 15,
                            right: 76,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 8,
                      ),
                      child: Text(
                        "Orlando Diggs",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryContainerMedium,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 27,
                        top: 1,
                      ),
                      child: Text(
                        "California, USA",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                      ),
                    ),
                    Opacity(
                      opacity: 0.1,
                      child: CustomTextFormField(
                        width: getHorizontalSize(
                          120,
                        ),
                        controller: editprofileController,
                        margin: getMargin(
                          left: 28,
                          top: 19,
                        ),
                        contentPadding: getPadding(
                          left: 15,
                          top: 7,
                          right: 15,
                          bottom: 7,
                        ),
                        textStyle:
                            CustomTextStyles.bodySmallOnPrimaryContainer_1,
                        hintText: "Change image",
                        hintStyle:
                            CustomTextStyles.bodySmallOnPrimaryContainer_1,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.39),
                        defaultBorderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimaryContainerTL61,
                        enabledBorderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimaryContainerTL61,
                        focusedBorderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimaryContainerTL61,
                        disabledBorderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimaryContainerTL61,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: getPadding(
                  left: 20,
                  top: 25,
                  right: 20,
                  bottom: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Fullname",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeGray90003,
                    ),
                    CustomTextFormField(
                      controller: brandonnameController,
                      margin: getMargin(
                        top: 10,
                      ),
                      contentPadding: getPadding(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 12,
                      ),
                      textStyle: theme.textTheme.bodySmall!,
                      hintText: "Brandone Louis ",
                      hintStyle: theme.textTheme.bodySmall!,
                      textInputAction: TextInputAction.next,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimaryContainer,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Date of birth",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeGray90003,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 10,
                      ),
                      padding: getPadding(
                        left: 20,
                        top: 8,
                        right: 20,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 2,
                            ),
                            child: Text(
                              "06 August 1992",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgTrashGray90004,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Gender",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeGray90003,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          CustomRadioButton(
                            text: "Male",
                            iconSize: getHorizontalSize(
                              18,
                            ),
                            value: radioList[0],
                            groupValue: radioGroup,
                            padding: getPadding(
                              left: 10,
                              top: 11,
                              right: 30,
                              bottom: 11,
                            ),
                            textStyle: theme.textTheme.bodySmall!,
                            onChange: (value) {
                              radioGroup = value;
                            },
                          ),
                          CustomRadioButton(
                            text: "Female",
                            value: radioList[1],
                            groupValue: radioGroup,
                            margin: getMargin(
                              left: 15,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 11,
                              right: 30,
                              bottom: 11,
                            ),
                            textStyle: theme.textTheme.bodySmall!,
                            onChange: (value) {
                              radioGroup = value;
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Email address",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeGray90003,
                      ),
                    ),
                    CustomTextFormField(
                      controller: emailController,
                      margin: getMargin(
                        top: 10,
                      ),
                      contentPadding: getPadding(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 12,
                      ),
                      textStyle: theme.textTheme.bodySmall!,
                      hintText: "Brandonelouis@gmail.com ",
                      hintStyle: theme.textTheme.bodySmall!,
                      textInputAction: TextInputAction.next,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimaryContainer,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Phone number",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeGray90003,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 10,
                      ),
                      padding: getPadding(
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fill10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              46,
                            ),
                            margin: getMargin(
                              top: 2,
                            ),
                            child: Text(
                              "1+",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallOpenSans,
                              
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(
                              20,
                            ),
                            child: VerticalDivider(
                              width: getHorizontalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: appTheme.gray400,
                            ),
                          ),
                          CustomTextFormField(
                            width: getHorizontalSize(
                              228,
                            ),
                            controller: phonenumberoneController,
                            margin: getMargin(
                              top: 1,
                              bottom: 2,
                            ),
                            textStyle: theme.textTheme.bodySmall!,
                            hintText: "619 3456 7890",
                            hintStyle: theme.textTheme.bodySmall!,
                            textInputAction: TextInputAction.next,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Location",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeGray90003,
                      ),
                    ),
                    CustomTextFormField(
                      controller: locationoneController,
                      margin: getMargin(
                        top: 10,
                      ),
                      contentPadding: getPadding(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 12,
                      ),
                      textStyle: theme.textTheme.bodySmall!,
                      hintText: "California, United states",
                      hintStyle: theme.textTheme.bodySmall!,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "Save".toUpperCase(),
          margin: getMargin(
            left: 81,
            right: 81,
            bottom: 20,
          ),
          buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(Size(
            getHorizontalSize(
              213,
            ),
            getVerticalSize(
              50,
            ),
          ))),
          buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
        ),
      ),
    );
  }
}
