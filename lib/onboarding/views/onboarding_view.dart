import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/home/views/home_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Image(
                        height: 260,
                        image: AssetImage('assets/images/onboarding.png')),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Рассрочка в один клик",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Покупайте товар в рассрочку или кредит в приложении Home Pay всего за один клик",
                    style: TextStyle(fontSize: 18, color: AppColors.black),
                  ),
                ],
              ),
              CupertinoButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomeView()));
                },
                borderRadius: const BorderRadius.all(Radius.circular(14)),
                color: AppColors.primary,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Начать",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white),
                        ),
                        SizedBox(width: 10),
                        FaIcon(FontAwesomeIcons.arrowRight,
                            size: 18, color: AppColors.white),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
