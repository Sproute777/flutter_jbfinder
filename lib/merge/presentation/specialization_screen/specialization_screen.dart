import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../specialization_screen/widgets/specialization_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SpecializationScreen extends StatelessWidget {
  SpecializationScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 26, right: 20, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray70001,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(top: 4),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Row(children: [
                            Expanded(
                                child: CustomSearchView(
                                    controller: searchController,
                                    hintText: "Search",
                                    hintStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    textStyle:
                                        CustomTextStyles.bodySmallBluegray30003,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 15,
                                            top: 8,
                                            right: 10,
                                            bottom: 8),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(40)),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(
                                            right: getHorizontalSize(15)),
                                        child: IconButton(
                                            onPressed: () {
                                              searchController.clear();
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600))),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    contentPadding: getPadding(
                                        top: 12, right: 30, bottom: 12),
                                    defaultBorderDecoration:
                                        SearchViewStyleHelper
                                            .outlineIndigo2002d,
                                    enabledBorderDecoration:
                                        SearchViewStyleHelper
                                            .outlineIndigo2002d,
                                    focusedBorderDecoration:
                                        SearchViewStyleHelper
                                            .outlineIndigo2002d,
                                    disabledBorderDecoration:
                                        SearchViewStyleHelper
                                            .outlineIndigo2002d)),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(left: 15),
                                padding: getPadding(all: 8),
                                decoration: IconButtonStyleHelper
                                    .outlineBluegray2003fTL10,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSettings))
                          ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Specialization",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray90003_1)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 19),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(181),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(15),
                                          crossAxisSpacing:
                                              getHorizontalSize(15)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return SpecializationItemWidget();
                                  })))
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
