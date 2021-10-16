import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/constants/colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 54,
        width: 54,
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: const Center(
          child: FaIcon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
