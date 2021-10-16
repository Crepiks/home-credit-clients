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
            )
          ],
        ));
  }

  scanProductBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        'ff6666', "Отмена", true, ScanMode.BARCODE);
    return barcode;
  }
}
