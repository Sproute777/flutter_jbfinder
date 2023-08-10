import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  AboutUsPageState createState() => AboutUsPageState();
}

class AboutUsPageState extends State<AboutUsPage>
    with AutomaticKeepAliveClientMixin<AboutUsPage> {
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
                      Padding(
                          padding: getPadding(top: 12),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 20),
                                    child: Text("About Company",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Container(
                                    width: getHorizontalSize(320),
                                    margin:
                                        getMargin(left: 20, top: 19, right: 35),
                                    child: Text(
                                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Container(
                                    width: getHorizontalSize(305),
                                    margin:
                                        getMargin(left: 20, top: 14, right: 50),
                                    child: Text(
                                        "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 15),
                                    child: Text("Website",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWeburl(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 6),
                                        child: Text("https://www.google.com",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOrange400))),
                                Padding(
                                    padding: getPadding(left: 20, top: 20),
                                    child: Text("Industry",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("Internet product",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 20),
                                    child: Text("Employee size",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("132,121 Employees",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 18),
                                    child: Text("Head office",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text(
                                        "Mountain View, California, Amerika Serikat",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 20),
                                    child: Text("Type",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 4),
                                    child: Text("Multinational company",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 18),
                                    child: Text("Since",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("1998",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 21),
                                    child: Text("Specialization",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)),
                                Container(
                                    width: getHorizontalSize(274),
                                    margin:
                                        getMargin(left: 20, top: 4, right: 81),
                                    child: Text(
                                        "Search technology, Web computing, Software and Online advertising",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall)),
                                Padding(
                                    padding: getPadding(left: 20, top: 20),
                                    child: Text("Company Gallery",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOpenSans)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage3,
                                                  height: getVerticalSize(115),
                                                  width: getHorizontalSize(158),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(6))),
                                              Container(
                                                  height: getVerticalSize(115),
                                                  width: getHorizontalSize(158),
                                                  margin: getMargin(left: 16),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage4,
                                                            height:
                                                                getVerticalSize(
                                                                    115),
                                                            width:
                                                                getHorizontalSize(
                                                                    158),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        6)),
                                                            alignment: Alignment
                                                                .center),
                                                        Opacity(
                                                            opacity: 0.7,
                                                            child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    padding: getPadding(
                                                                        left:
                                                                            44,
                                                                        top: 48,
                                                                        right:
                                                                            44,
                                                                        bottom:
                                                                            48),
                                                                    decoration: AppDecoration
                                                                        .fill7
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder6),
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3),
                                                                        child: Text(
                                                                            "+5 pictures",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: CustomTextStyles.labelLargeOnPrimaryContainer)))))
                                                      ]))
                                            ]))),
                                Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 22),
                                    padding: getPadding(
                                        left: 20,
                                        top: 14,
                                        right: 20,
                                        bottom: 14),
                                    decoration: AppDecoration.fill10,
                                    child: Row(children: [
                                      CustomIconButton(
                                          height: 50,
                                          width: 50,
                                          padding: getPadding(all: 13),
                                          decoration: IconButtonStyleHelper
                                              .outlineBluegray20026,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgBookmarkOrangeA20001)),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              text: "Apply Now".toUpperCase(),
                                              margin: getMargin(left: 15),
                                              buttonStyle: CustomButtonStyles
                                                  .outlineIndigo2002d
                                                  .copyWith(
                                                      fixedSize:
                                                          MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      50)))),
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallOnPrimaryContainer_2))
                                    ]))
                              ]))
                    ])))));
  }

  onTapTxtWeburl(BuildContext context) {
    // TODO: implement Actions
  }
}
