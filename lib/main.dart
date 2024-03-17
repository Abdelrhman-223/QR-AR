import 'package:flutter/material.dart';
import 'package:qr_ar/ar_viewer/model_viewer.dart';
import 'package:qr_ar/qr_scanner/qr_function.dart';
import 'package:qr_ar/widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR-AR',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              buttonFunction: () {
                setState(() {
                  qrScanner(context);
                });
              },
              buttonTitle: "QR",
            ),
            CustomButton(
              buttonFunction: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FurnitureModelViewer(
                      modelPathForAndroid: 'assets/Koltuk.glb',
                      modelPathForIos: 'assets/Koltuk.usdz',
                    ),
                  ),
                );
              },
              buttonTitle: "AR",
            ),
          ],
        ),
      ),
    );
  }
}
