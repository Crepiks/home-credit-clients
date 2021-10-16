import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import './profile_action_link.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 6,
          ),
          Text(
            "Действия",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Редактировать",
            icon: FaIcon(
              FontAwesomeIcons.userEdit,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          ProfileActionLink(
            text: "Мои покупки",
            icon: FaIcon(
              FontAwesomeIcons.creditCard,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          ProfileActionLink(
            text: "Сменить пароль",
            icon: FaIcon(
              FontAwesomeIcons.lock,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          ProfileActionLink(
            text: "Продвинутая статистика",
            icon: FaIcon(
              FontAwesomeIcons.chartPie,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Уведомления",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Уведомления",
            icon: FaIcon(
              FontAwesomeIcons.bell,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Прочие",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Пожаловаться",
            icon: FaIcon(
              FontAwesomeIcons.bug,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          ProfileActionLink(
            text: "Выйти",
            icon: FaIcon(
              FontAwesomeIcons.signOutAlt,
              size: 20,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
