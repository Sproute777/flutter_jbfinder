import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AboutMeScreen extends StatelessWidget {
  AboutMeScreen({Key? key}) : super(key: key);

  TextEditingController tellmeaboutyouController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray80003,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text("About me",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumOpenSans)),
                      CustomTextFormField(
                          controller: tellmeaboutyouController,
                          margin: getMargin(top: 30),
                          contentPadding: getPadding(
                              left: 20, top: 18, right: 20, bottom: 18),
                          textStyle:
                              CustomTextStyles.bodySmallOpenSansBluegray30003_1,
                          hintText: "Tell me about you.",
                          hintStyle:
                              CustomTextStyles.bodySmallOpenSansBluegray30003_1,
                          maxLines: 13,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.outlineIndigo2002d,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineIndigo2002d,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.outlineIndigo2002d,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineIndigo2002d),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Save".toUpperCase(),
                          margin: getMargin(bottom: 70),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002d
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(213),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer_2,
                          alignment: Alignment.center)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
