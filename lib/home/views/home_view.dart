import "package:flutter/material.dart";
import 'package:home_credit_clients/common/colors.dart';
import 'package:home_credit_clients/home/views/components/header.dart';
import 'package:home_credit_clients/home/views/components/shop_card.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

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
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () async {
                  String barcodeScanRes =
                      await FlutterBarcodeScanner.scanBarcode(
                          'ff6666', "Отмена", true, ScanMode.BARCODE);
                },
                child: const ShopCard(),
              )),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShopCard(),
          ),
        ],
      ),
    );
  }
}
