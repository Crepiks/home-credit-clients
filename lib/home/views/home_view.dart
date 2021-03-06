import 'dart:async';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/common/models/shop_model.dart';
import 'package:home_credit_clients/data/shops.dart';
import 'package:home_credit_clients/home/views/components/header.dart';
import 'package:home_credit_clients/common/components/shop_card.dart';
import 'package:home_credit_clients/product/views/product_details_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 1500), () {
      _showSuggestedShop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Header(),
          ),
          ..._buildShopCards(context)
        ],
      ),
    );
  }

  List<Widget> _buildShopCards(BuildContext context) {
    return shops
        .map((ShopModel shop) => _buildShopCard(context: context, shop: shop))
        .toList();
  }

  Widget _buildShopCard(
      {required BuildContext context, required ShopModel shop}) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: GestureDetector(
          onTap: () {
            _navigateToProductDetailsScreen(context);
          },
          child: ShopCard(shop: shop),
        ));
  }

  _showSuggestedShop(BuildContext context) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Container(
            width: double.infinity,
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "???? ???????????????????? ???????????",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ShopCard(
                      shop: ShopModel(
                          name: "?????????????? Sulpak",
                          address: '????. ????????????????, 90 (?????? ??????)',
                          rating: 4.8,
                          distance: 0.1,
                          productQuantity: 245,
                          image: 'sulpak-logo.jpeg'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: CupertinoButton(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "??????, ??????????????",
                              style: TextStyle(color: AppColors.primary),
                            ),
                          )),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {
                        Navigator.pop(context);
                        _navigateToProductDetailsScreen(context);
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(14)),
                      color: AppColors.primary,
                      child: const Text("????, ??????????????"),
                    )),
                  ],
                )
              ],
            )));
  }

  _navigateToProductDetailsScreen(BuildContext context) {
    Navigator.push(context,
        CupertinoPageRoute(builder: (context) => const ProductDetailsView()));
  }
}
