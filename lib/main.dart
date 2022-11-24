import 'package:flutter/material.dart';
import 'package:nft_wallet/market_nft.dart';
import 'home_tokens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 15, 17, 30), //<-- SEE HERE
    ),
            home: MarketNFT(),
    );
  }
}
