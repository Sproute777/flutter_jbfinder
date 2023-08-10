import '../../routes/app_routes.dart';
import '../export.dart';
import '../my_connection_screen/widgets/my_connection_item_widget.dart';
import 'package:flutter/material.dart';

import '../posting_page/posting_page.dart';
class MyConnectionScreen extends StatelessWidget {
  MyConnectionScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 23,
            right: 16,
            bottom: 23,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 27,
                    right: 8,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        192,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        15,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        15,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return MyConnectionItemWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "Posting",
                        margin: getMargin(
                          right: 7,
                        ),
                        buttonStyle:
                            CustomButtonStyles.fillDeeppurple10001.copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          getVerticalSize(
                            40,
                          ),
                        ))),
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOpenSansPrimary,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "My connection",
                        margin: getMargin(
                          left: 7,
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          getVerticalSize(
                            40,
                          ),
                        ))),
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOnPrimaryContainer_2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.Infogray90002:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}
