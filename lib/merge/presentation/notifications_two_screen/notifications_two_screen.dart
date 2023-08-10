import '../notifications_two_screen/widgets/notifications2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

class NotificationsTwoScreen extends StatelessWidget {
  const NotificationsTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            right: 20,
          ),
          child: Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Notifications",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge,
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      top: 43,
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Notifications2ItemWidget();
                      },
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
