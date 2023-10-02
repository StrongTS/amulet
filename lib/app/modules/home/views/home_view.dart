import 'package:amulet/app/model/amulet_model.dart';
import 'package:amulet/app/modules/home/widget/amulet_bar_widget.dart';
import 'package:amulet/app/modules/home/widget/amulet_card.dart';
import 'package:amulet/app/modules/home/widget/avatar_widget.dart';
import 'package:amulet/app/modules/home/widget/bottom_nav_bar.dart';
import 'package:amulet/app/modules/home/widget/horizontal_amulet_card.dart';
import 'package:amulet/app/modules/home/widget/offers_bar.dart';
import 'package:amulet/app/modules/home/widget/personal_widget.dart';
import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return scafFold(size);
  }

  Scaffold scafFold(Size size) {
    return Scaffold(
        backgroundColor: background,
        bottomNavigationBar: const BottomNavBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Avatar(),
                      SizedBox(
                        width: 8,
                      ),
                      PersonalInfo(),
                    ],
                  ),
                  const AmuletBar(),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...amulets.map((e) => AmuletCard(amulet: e)).toList(),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  const OffersBar(),
                  const HorizontalAmuletCard(),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
