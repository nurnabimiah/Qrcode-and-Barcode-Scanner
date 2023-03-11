import 'package:barcode_scanner/screens/qrcode_screen.dart';
import 'package:flutter/material.dart';

import 'barcode_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tabs Demo'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BarcodeScreen()));
              },
              child: Text('Barcode')),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QrcodeScreen()));
              },
              child: const Text('Qrcode')),
        ],
      ),
    );
  }
}
