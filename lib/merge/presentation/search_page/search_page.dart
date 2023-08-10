import '../export.dart';
import '../search_page/widgets/search_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    15,
                                  ),
                                );
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return SearchItemWidget();
                              },
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 35,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 35,
                              right: 20,
                              bottom: 35,
                            ),
                            decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "UX Researcher",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleSmallOpenSansBluegray900,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Twitter inc",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallOpenSans,
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
                                          top: 9,
                                          bottom: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          color: appTheme.blueGray70001,
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
                                          "California, USA",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallOpenSans,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Opacity(
                                        opacity: 0.2,
                                        child: Container(
                                          width: getHorizontalSize(
                                            79,
                                          ),
                                          padding: getPadding(
                                            left: 23,
                                            top: 6,
                                            right: 23,
                                            bottom: 6,
                                          ),
                                          decoration:
                                              AppDecoration.txtFill.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8,
                                          ),
                                          child: Text(
                                            "Design",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans10,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.2,
                                        child: Container(
                                          width: getHorizontalSize(
                                            82,
                                          ),
                                          padding: getPadding(
                                            left: 21,
                                            top: 6,
                                            right: 21,
                                            bottom: 6,
                                          ),
                                          decoration:
                                              AppDecoration.txtFill.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8,
                                          ),
                                          child: Text(
                                            "Full time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans10,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.2,
                                        child: Container(
                                          width: getHorizontalSize(
                                            114,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 6,
                                            right: 20,
                                            bottom: 6,
                                          ),
                                          decoration:
                                              AppDecoration.txtFill.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8,
                                          ),
                                          child: Text(
                                            "Senior designer",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 15,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "25 minute ago",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray30003,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "12K",
                                              style: CustomTextStyles
                                                  .titleSmallOpenSansBlack900,
                                            ),
                                            TextSpan(
                                              text: "/",
                                              style: CustomTextStyles
                                                  .labelLargeOpenSansBluegray30003,
                                            ),
                                            TextSpan(
                                              text: "Mo",
                                              style: CustomTextStyles
                                                  .bodySmallOpenSansBluegray30003_2,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
