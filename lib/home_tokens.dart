import 'package:flutter/material.dart';

class HomeTokens extends StatelessWidget {
  const HomeTokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 17),
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/vectors/Group 13.png'),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Account_1',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Urbanist'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 17),
                  child: Stack(children: [
                    Column(
                      children: const [
                        Image(
                          image: AssetImage('assets/vectors/Vector.png'),
                        ),
                        Image(
                          image: AssetImage('assets/vectors/Vector0.png'),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 30),
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Urbanist'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 44,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Current Wallet Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      r'$ 5,323.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Urbanist'),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Image(
                      image: AssetImage('assets/vectors/Vector1.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 161,
                  height: 22,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 47, 47, 52),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
                    child: Row(
                      children: const [
                        Text(
                          'BTC : 0,00335',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Urbanist'),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Image(
                          image: AssetImage('assets/vectors/Rectangle 8.png'),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '+6.54%',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 163),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Urbanist'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ///////////////////////////////
                  children: [
                    cirAvatar(
                        radius: 40,
                        colour: const Color.fromARGB(255, 42, 53, 71),
                        child: const Image(
                          image: AssetImage('assets/vectors/money-send 1.png'),
                        ),
                        text: 'Send'),
                    cirAvatar(
                        radius: 40,
                        colour: const Color.fromARGB(255, 0, 97, 255),
                        child: const Image(
                          image: AssetImage('assets/vectors/add 1.png'),
                        ),
                        text: 'Buy'),
                    cirAvatar(
                        radius: 40,
                        colour: const Color.fromARGB(255, 42, 53, 71),
                        child: const Image(
                          image:
                              AssetImage('assets/vectors/money-recive 1.png'),
                        ),
                        text: 'Receive'),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Stack(
                  children: [
                    Container(
                      width: 370,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: const Color.fromARGB(255, 33, 36, 54),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            child: Container(
                              alignment: Alignment.center,
                              width: 190,
                              height: 39,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: const Color.fromARGB(255, 59, 63, 88),
                              ),
                              child: const Text(
                                'Tokens',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Urbanist'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Text(
                            'NFTs',
                            style: TextStyle(
                                color: Color.fromARGB(255, 124, 125, 130),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Urbanist'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                tile(
                    imgPath: 'assets/vectors/Vector3.png',
                    text1: 'BTC',
                    text2: 'Bitcoin',
                    linePath: 'assets/vectors/Line 1.png',
                    number1: r'$36,590.00',
                    number2: '+6.21%',
                    colour: const Color.fromARGB(255, 247, 147, 26),
                    colour2: const Color.fromARGB(255, 10, 255, 150)),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  child: Image(
                    image: AssetImage('assets/vectors/Line.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                tile(
                    imgPath: 'assets/vectors/Frame 6.png',
                    text1: 'ETH',
                    text2: 'Ethereum',
                    linePath: 'assets/vectors/Line 2.png',
                    number1: r'$2,590.00',
                    number2: '+5.21%',
                    colour: const Color.fromARGB(255, 0, 255, 163),
                    colour2: const Color.fromARGB(255, 10, 255, 150)),
                tile(
                    imgPath: 'assets/vectors/solana-sol-logo 1.png',
                    text1: 'SOL',
                    text2: 'Solona',
                    linePath: 'assets/vectors/Line 3.png',
                    number1: r'$390.00',
                    number2: '+2.21%',
                    colour: const Color.fromARGB(255, 207, 255, 243),
                    colour2: const Color.fromARGB(255, 255, 0, 46))
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding tile(
      {String? imgPath,
      String? text1,
      String? text2,
      String? linePath,
      String? number1,
      String? number2,
      Color? colour,
      Color? colour2}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: colour,
            child: Image(
              image: AssetImage(imgPath!),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text1!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'),
              ),
              Text(
                text2!,
                style: const TextStyle(
                    color: Color.fromARGB(255, 160, 160, 160),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Urbanist'),
              ),
            ],
          ),
          const SizedBox(
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Image(image: AssetImage(linePath!)),
          ),
          const SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  number1!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    number2!,
                    style: TextStyle(
                        color: colour2,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Urbanist'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cirAvatar(
      {double? radius, Color? colour, Widget? child, String? text}) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: colour,
          child: child,
        ),
        const SizedBox(
          height: 8,
        ),
        Center(
          child: Text(
            text!,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Urbanist'),
          ),
        )
      ],
    );
  }
}
