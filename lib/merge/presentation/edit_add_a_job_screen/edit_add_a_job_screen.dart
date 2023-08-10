import '../edit_add_a_job_screen/widgets/edit_add_a_job_item_widget.dart';
import 'package:flutter/material.dart';

import '../export.dart';

class EditAddAJobScreen extends StatelessWidget {
  const EditAddAJobScreen({Key? key})
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
            top: 32,
            right: 20,
            bottom: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  "Add a job",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(
                          10,
                        ),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return EditAddAJobItemWidget();
                    },
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 20,
                  top: 18,
                  right: 20,
                  bottom: 18,
                ),
                decoration: AppDecoration.fill10.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 2,
                          ),
                          child: Text(
                            "Description",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallGray90001,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgEdit,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 20,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: appTheme.gray30001,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        263,
                      ),
                      margin: getMargin(
                        top: 19,
                        right: 31,
                        bottom: 1,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumDMSans_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
