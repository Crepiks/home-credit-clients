import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_clients/common/constants/colors.dart';
import 'package:home_credit_clients/home/views/home_view.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProductPurchaseConfirmationView extends StatefulWidget {
  final String barcode;

  const ProductPurchaseConfirmationView({Key? key, required this.barcode})
      : super(key: key);

  @override
  _ProductPurchaseConfirmationViewState createState() =>
      _ProductPurchaseConfirmationViewState();
}

class _ProductPurchaseConfirmationViewState
    extends State<ProductPurchaseConfirmationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Column(
                children: [
                  QrImage(
                    data: widget.barcode,
                    version: QrVersions.auto,
                    size: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 6),
                    child: Text(
                      "Спасибо за покупку!",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Покажите QR код консультанту, кассиру или охраннику на выходе",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.black.withOpacity(0.8)),
                    ),
                  ),
                ],
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.pushReplacement(
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
                              FaIcon(
                                FontAwesomeIcons.shoppingCart,
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text("Вернуться к магазинам")
                            ],
                          )),
                    ),
                  ))
            ]));
  }
}
