import 'package:amulet/app/model/amulet_model.dart';
import 'package:amulet/app/modules/home/widget/container_arrow.dart';
import 'package:amulet/app/modules/home/widget/premium.dart';
import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AmuletCard extends StatelessWidget {
  final Amulet amulet;
  const AmuletCard({super.key, required this.amulet});
  @override
  Widget build(BuildContext context) {
    var amuletSize = MediaQuery.of(context).size.height * 0.16;
    var cardSize = MediaQuery.of(context).size.height * 0.23;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(75),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(75),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                offset: const Offset(2, 2),
                blurRadius: 1,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 32,
              right: 32,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amulet.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const Premium(),
                Text(
                  amulet.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(amuletSize - 40),
          left: (cardSize - amuletSize) / 10,
          child: SizedBox(
            height: amuletSize,
            width: amuletSize,
            child: Image.asset(
              amulet.image,
            ),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        ),
      ],
    );
  }
}
