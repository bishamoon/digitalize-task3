import 'package:flutter/material.dart';

class MarketNFT extends StatelessWidget {
  List category = ['NFTs', 'Art', 'Collectibles', 'Music'];
  List cards = [
    ['assets/vectors/Rectangle 9.png', 'Super Influencers', '#1267', '6.64'],
    ['assets/vectors/Rectangle 10.png', 'Super Influencers', '#1267', '6.64'],
    ['assets/vectors/Rectangle 11.png', 'Super Influencers', '#1267', '6.64'],
    ['assets/vectors/Rectangle 12.png', 'Super Influencers', '#1267', '6.64'],
    ['assets/vectors/Rectangle 13.png', 'Super Influencers', '#1267', '6.64'],
    ['assets/vectors/Rectangle 14.png', 'Super Influencers', '#1267', '6.64'],
    
  ];
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 120,
                  ),
                  const Text(
                    'Market',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Urbanist'),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: const [
                      Image(
                        image: AssetImage('assets/vectors/Group 11.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Image(
                            image: AssetImage('assets/vectors/Ellipse 3.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 3),
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Urbanist'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 7),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 9,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return CustomContainer(text: category[index]);
                  },
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                padding: const EdgeInsets.only(bottom: 8),
                itemCount: cards.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return cardd(
                    imgUrl: cards[index][0],
                    text: cards[index][1],
                    number1: cards[index][2],
                    number2: cards[index][3],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

const borderWidth = 1.0;
final kInnerDecoration = BoxDecoration(
  color: const Color.fromARGB(255, 47, 47, 52),
  borderRadius: BorderRadius.circular(50),
);
final kGradientBoxDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    Color.fromARGB(255, 10, 255, 150),
    Color.fromARGB(255, 0, 224, 255),
  ]),
  borderRadius: BorderRadius.circular(50),
);
Widget CustomContainer({String? text}) {
  return Container(
    width: 100,
    height: 40,
    decoration: kGradientBoxDecoration,
    child: Padding(
      padding: EdgeInsets.all(borderWidth),
      child: DecoratedBox(
        decoration: kInnerDecoration,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text!,
            style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Urbanist'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget cardd({String? imgUrl, String? text, String? number1, String? number2}) {
  return Padding(
    padding: const EdgeInsets.only(left: 22, top: 9),
    child: Stack(
      children: [
        Container(
          width: 156,
          height: 224,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color.fromARGB(255, 42, 53, 71),
          ),
        ),
        Image(
          image: AssetImage(imgUrl!),
          fit: BoxFit.contain,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 120, top: 9),
          child: Image(image: AssetImage('assets/vectors/Frame 14.png')),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 144, left: 4),
              child: Text(
                text!,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 4),
              child: Row(
                children: [
                  Text(
                    number1!,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Urbanist'),
                  ),
                  SizedBox(
                    width: 68,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Image(
                      image: AssetImage('assets/vectors/Layer_x0020_1.png'),
                    ),
                  ),
                  Text(
                    number2!,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Urbanist'),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}

