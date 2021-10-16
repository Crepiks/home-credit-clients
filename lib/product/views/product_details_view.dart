import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/components/back_button.dart';
import 'package:home_credit_clients/common/components/loading_indicator.dart';
import 'package:home_credit_clients/common/components/shop_card.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/home/views/home_view.dart';
import 'package:home_credit_clients/product/views/components/payments_method_card.dart';
import 'package:home_credit_clients/product/views/product_purchase_confirmation_view.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  bool contentVisible = false;
  bool contentLoading = false;

  @override
  void initState() {
    super.initState();
    _setup(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: contentVisible
            ? contentLoading
                ? _buildLoadingIndicator()
                : _buildProductDetails()
            : Container());
  }

  _setup(BuildContext context) async {
    final barcode = await _scanProductBarcode(context);
    if (barcode == '-1') {
      return _navigateBack(context);
    }

    setState(() {
      contentVisible = true;
      contentLoading = true;
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        contentLoading = false;
      });
    });
  }

  Future<String> _scanProductBarcode(BuildContext context) async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        'ff6666', "Отмена", true, ScanMode.BARCODE);

    return barcode;
  }

  _navigateBack(BuildContext context) {
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => const HomeView()));
  }

  _buildLoadingIndicator() {
    return const Center(
      child: LoadingIndicator(
        color: AppColors.primary,
      ),
    );
  }

  _buildProductDetails() {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      SizedBox(
          height: double.infinity,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [AppBackButton()],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image:
                                AssetImage('assets/images/coffee-machine.jpeg'),
                            scale: 4))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Кофемашина Philips EP3241/50",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600))),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                      "Готовьте любимый кофе — эспрессо, кофе, капучино и латте маккиато — одним нажатием кнопки. Капучинатор LatteGo подарит вам вкусный кофе с нежнейшей молочной пеной. Он устанавливается и очищается всего за 15 секунд",
                      style: TextStyle(
                        fontSize: 16,
                      ))),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Продавец",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600))),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ShopCard()),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Способ покупки",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600))),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: PaymentsMethodCard(
                      text: "Рассрочка на 3 месяца", selected: true)),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: PaymentsMethodCard(
                    text: "Рассрочка на 6 месяцев",
                    selected: false,
                  )),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: PaymentsMethodCard(
                    text: "Рассрочка на 12 месяцев",
                    selected: false,
                  )),
              const SizedBox(
                height: 80,
              )
            ],
          )),
      Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CupertinoButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) =>
                            const ProductPurchaseConfirmationView()));
              },
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              color: AppColors.primary,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.creditCard,
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Text("Приобрести")
                    ],
                  )),
            ),
          ))
    ]);
  }
}
