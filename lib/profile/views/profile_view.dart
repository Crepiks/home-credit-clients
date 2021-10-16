import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_credit_clients/common/components/back_button.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import './components/profile_actions.dart';
import './components/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 100),
            child: ListView(
              children: [
                Row(
                  children: const [AppBackButton()],
                ),
                const SizedBox(
                  height: 14,
                ),
                const ProfileCard(),
                const SizedBox(height: 14),
                const ProfileActions()
              ],
            )));
  }
}
