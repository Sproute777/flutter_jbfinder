import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

class ScrollScaffold extends StatelessWidget {
  final Widget body;
  final Widget? floatingActionButton;
  const ScrollScaffold(
      {super.key, required this.body, this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButton,
        backgroundColor: PrimaryColors.gray50,
        body: Center(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical, child: body),
        ),
      ),
    );
  }
}
