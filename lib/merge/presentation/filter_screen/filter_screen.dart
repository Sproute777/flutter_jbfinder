import '../export.dart';
import '../filter_screen/widgets/chipviewfulltim2_item_widget.dart';
import '../filter_screen/widgets/chipviewfulltim_item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = [
    "lbl_recent",
    "lbl_last_week",
    "lbl_last_month",
    "lbl_any_time"
  ];

  String radioGroup1 = "";

  List<String> radioList1 = ["lbl_on_site", "lbl_hybrid", "lbl_remote"];

  bool isCheckbox = false;

  bool isCheckbox1 = false;

  bool isCheckbox2 = false;

  bool isCheckbox3 = false;

  String radioGroup2 = "";

  List<String> radioList2 = [
    "lbl_no_experience",
    "msg_less_than_a_year",
    "lbl_1_3_years",
    "lbl_3_5_years",
    "lbl_5_10_years",
    "msg_more_than_10_years"
  ];

  bool isCheckbox4 = false;

  bool isCheckbox5 = false;

  bool isCheckbox6 = false;

  bool isCheckbox7 = false;

  bool isCheckbox8 = false;

  bool isCheckbox9 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 16),
                    child: Padding(
                        padding: getPadding(left: 20, right: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowleftBlueGray70001,
                                  height: getSize(24),
                                  width: getSize(24),
                                  onTap: () {
                                    onTapImgArrowleft(context);
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 16),
                                      child: Text("Filter",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleLargeBlack900))),
                              Padding(
                                  padding: getPadding(top: 49),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Last update",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(children: [
                                    CustomRadioButton(
                                        text: "Recent",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList[0],
                                        groupValue: radioGroup,
                                        margin: getMargin(right: 24),
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Last week",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList[1],
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 20, right: 8),
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Last month",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList[2],
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 20),
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Any time",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList[3],
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 20, right: 13),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup = value;
                                        })
                                  ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Type of workplace",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(children: [
                                    CustomRadioButton(
                                        text: "On-site",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList1[0],
                                        groupValue: radioGroup1,
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup1 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Hybrid",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList1[1],
                                        groupValue: radioGroup1,
                                        margin: getMargin(top: 20, right: 5),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup1 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Remote",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList1[2],
                                        groupValue: radioGroup1,
                                        margin: getMargin(top: 20),
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup1 = value;
                                        })
                                  ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Job type",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          5,
                                          (index) =>
                                              ChipviewfulltimItemWidget()))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Position level",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin: getMargin(top: 9))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          4,
                                          (index) =>
                                              Chipviewfulltim2ItemWidget()))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("City",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              CustomCheckboxButton(
                                  text: "California, USA",
                                  value: isCheckbox,
                                  margin: getMargin(top: 29),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Texaz, USA",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox1,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox1 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "New York, USA",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox2,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox2 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Florida, USA",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox3,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox3 = value;
                                  }),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Salary",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              Container(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(335),
                                  margin: getMargin(top: 33),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(2),
                                                width: getHorizontalSize(335),
                                                margin: getMargin(bottom: 10))),
                                        SliderTheme(
                                            data: SliderThemeData(
                                                trackShape:
                                                    RoundedRectSliderTrackShape(),
                                                activeTrackColor:
                                                    appTheme.orange400,
                                                inactiveTrackColor: theme
                                                    .colorScheme
                                                    .secondaryContainer,
                                                thumbColor: theme.colorScheme
                                                    .onPrimaryContainer,
                                                thumbShape:
                                                    RoundSliderThumbShape()),
                                            child: RangeSlider(
                                                values: RangeValues(0, 0),
                                                min: 0.0,
                                                max: 100.0,
                                                onChanged: (value) {}))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 81, top: 9, right: 84),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("13k",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.labelLarge),
                                            Text("25k",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.labelLarge)
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Experience",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(children: [
                                    CustomRadioButton(
                                        text: "No experience",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[0],
                                        groupValue: radioGroup2,
                                        margin: getMargin(right: 24),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "Less than a year",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[1],
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 20, right: 15),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "1-3 years",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[2],
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 20, right: 55),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "3-5 years",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[3],
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 19, right: 51),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "5-10 years",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[4],
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 19, right: 46),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        }),
                                    CustomRadioButton(
                                        text: "More than 10 years",
                                        iconSize: getHorizontalSize(18),
                                        value: radioList2[5],
                                        groupValue: radioGroup2,
                                        margin: getMargin(top: 19),
                                        textStyle: theme.textTheme.bodySmall!,
                                        onChange: (value) {
                                          radioGroup2 = value;
                                        })
                                  ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Specialization",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin:
                                                getMargin(top: 8, bottom: 1))
                                      ])),
                              CustomCheckboxButton(
                                  text: "Design",
                                  value: isCheckbox4,
                                  margin: getMargin(top: 29),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox4 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Finance",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox5,
                                  margin: getMargin(top: 19),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox5 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Education",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox6,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox6 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Health",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox7,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox7 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Restuarant",
                                  iconSize: getHorizontalSize(18),
                                  value: isCheckbox8,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox8 = value;
                                  }),
                              CustomCheckboxButton(
                                  text: "Programmer",
                                  value: isCheckbox9,
                                  margin: getMargin(top: 20),
                                  textStyle: theme.textTheme.bodySmall!,
                                  onChange: (value) {
                                    isCheckbox9 = value;
                                  }),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.gray300))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 20, right: 20, bottom: 14),
                decoration: AppDecoration.outline1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomElevatedButton(
                          text: "Reset",
                          buttonStyle: CustomButtonStyles
                              .outlineBluegray20026TL15
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(75),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeOpenSansOrange400),
                      Expanded(
                          child: CustomElevatedButton(
                              text: "Apply Now".toUpperCase(),
                              margin: getMargin(left: 15),
                              buttonStyle: CustomButtonStyles.outlineIndigo2002d
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(50)))),
                              buttonTextStyle: CustomTextStyles
                                  .titleSmallOnPrimaryContainer))
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
