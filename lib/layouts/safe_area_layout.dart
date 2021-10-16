import "package:flutter/material.dart";
import 'package:home_credit_clients/common/colors.dart';

class SafeAreaLayout extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const SafeAreaLayout(
      {Key? key,
      required this.child,
      this.backgroundColor = AppColors.whiteColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      backgroundColor: backgroundColor,
    );
  }
}
