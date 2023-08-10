import '../notifications_one_screen/widgets/notifications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

class NotificationsOneScreen extends StatelessWidget {
  const NotificationsOneScreen({Key? key})
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
            top: 1,
            right: 20,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "Notifications",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 43,
                  ),
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
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return NotificationsItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
