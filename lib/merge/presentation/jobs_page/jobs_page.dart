import '../export.dart';
import '../jobs_page/widgets/jobs_item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class JobsPage extends StatefulWidget {
  const JobsPage({Key? key})
      : super(
          key: key,
        );

  @override
  JobsPageState createState() => JobsPageState();
}

class JobsPageState extends State<JobsPage>
    with AutomaticKeepAliveClientMixin<JobsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
                        top: 16,
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
                                    16,
                                  ),
                                );
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return JobsItemWidget();
                              },
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 33,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 15,
                              right: 20,
                              bottom: 15,
                            ),
                            decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        padding: getPadding(
                                          all: 7,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgGoogle1,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgBookmark,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          bottom: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Graphic Dsigner",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleSmallOpenSansGray90003,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Google inc",
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
                                          top: 2,
                                          bottom: 3,
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
                                              text: "15K",
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
