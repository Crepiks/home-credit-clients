import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

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
    return const Scaffold(body: Center(child: Text("Product details")));
  }

  scanProductBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        'ff6666', "Отмена", true, ScanMode.BARCODE);
    return barcode;
  }
}
