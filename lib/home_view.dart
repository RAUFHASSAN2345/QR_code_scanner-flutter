import 'package:flutter/material.dart';
import 'package:qr_code_scanner_flutter/scanner_view.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'QR_code_scanner_practice',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const scanner_view(),
                  ));
            },
            child: const Text(
              'Scan',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
