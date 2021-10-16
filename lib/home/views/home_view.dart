import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/home/views/components/header.dart';
import 'package:home_credit_clients/home/views/components/shop_card.dart';
import 'package:home_credit_clients/product/views/product_details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
          const SizedBox(height: 20),
          _buildShopCard(context),
        ],
      ),
    );
  }

  _buildShopCard(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => const ProductDetailsView()));
          },
          child: const ShopCard(),
        ));
  }
}
