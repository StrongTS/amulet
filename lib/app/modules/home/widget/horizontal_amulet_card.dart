import 'package:amulet/app/modules/home/widget/container_arrow.dart';
import 'package:amulet/app/modules/home/widget/premium.dart';
import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';

class HorizontalAmuletCard extends StatelessWidget {
  const HorizontalAmuletCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.15,
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
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset("assets/3.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wicca Runes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Premium(),
                        Text(
                          "(แถมฟรี กาแฟ 1 แก้ว)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "20 USD",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 17,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "12 USD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
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
