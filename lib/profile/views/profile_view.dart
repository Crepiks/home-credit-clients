import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_credit_clients/common/components/back_button.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/home/views/components/notifications_button.dart';
import './components/profile_actions.dart';
import './components/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [AppBackButton(), NotificationsButton()],
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
