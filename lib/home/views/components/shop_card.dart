import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/colors.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/sulpak-logo.jpeg')))),
            const SizedBox(width: 14),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Магазин Sulpak",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text("ул. Сатпаева, 90 (ТРЦ АДК)",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.black.withOpacity(0.6),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.star, size: 14),
                        SizedBox(width: 4),
                        Text("4.8")
                      ],
                    ),
                    const SizedBox(width: 14),
                    Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.running, size: 14),
                        SizedBox(width: 4),
                        Text("2.4 км")
                      ],
                    ),
                    const SizedBox(width: 14),
                    Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.shoppingBag, size: 14),
                        SizedBox(width: 4),
                        Text("114")
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
