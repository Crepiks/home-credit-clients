import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:home_credit_clients/common/components/back_button.dart';
import 'package:home_credit_clients/common/constants/colors.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  void initState() {
    super.initState();
    scanProductBarcode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [AppBackButton()],
              ),
            ),
            const SizedBox(height: 20),
            Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/coffee-machine.jpeg')))),
            const SizedBox(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Кофемашина Philips EP3241/50",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)))
          ],
        ));
  }

  scanProductBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        'ff6666', "Отмена", true, ScanMode.BARCODE);
    return barcode;
  }
}
