import "package:flutter/material.dart";
import 'package:home_credit_clients/common/colors.dart';
import 'package:home_credit_clients/home/views/components/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Header(),
          )
        ],
      ),
    );
  }
}
