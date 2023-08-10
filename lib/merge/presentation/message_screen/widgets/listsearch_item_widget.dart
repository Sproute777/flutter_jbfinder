import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class ListsearchItemWidget extends StatelessWidget {
  ListsearchItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomSearchView(
      width: getHorizontalSize(
        335,
      ),
      controller: searchController,
      hintText: "Search message",
      hintStyle: CustomTextStyles.bodySmallBluegray30002,
      textStyle: CustomTextStyles.bodySmallBluegray30002,
      prefix: Container(
        margin: getMargin(
          left: 15,
          top: 13,
          right: 10,
          bottom: 13,
        ),
        child: CustomImageView(
          svgPath: ImageConstant.imgSearchBlueGray30004,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: getVerticalSize(
          50,
        ),
      ),
      suffix: Padding(
        padding: EdgeInsets.only(
          right: getHorizontalSize(
            15,
          ),
        ),
        child: IconButton(
          onPressed: () {
            searchController.clear();
          },
          icon: Icon(
            Icons.clear,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      filled: true,
      fillColor: theme.colorScheme.onPrimaryContainer,
      contentPadding: getPadding(
        top: 17,
        right: 30,
        bottom: 17,
      ),
      defaultBorderDecoration: SearchViewStyleHelper.outlineIndigo2002d,
      enabledBorderDecoration: SearchViewStyleHelper.outlineIndigo2002d,
      focusedBorderDecoration: SearchViewStyleHelper.outlineIndigo2002d,
      disabledBorderDecoration: SearchViewStyleHelper.outlineIndigo2002d,
    );
  }
}
