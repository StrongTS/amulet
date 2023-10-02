import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AmuletBar extends StatelessWidget {
  const AmuletBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ของขลัง",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            Text(
              "Premium",
              style: TextStyle(
                color: orange,
                fontSize: 30,
              ),
            ),
          ],
        ),
        Text(
          "ดูเพิ่ม..",
          style: TextStyle(
            color: orange,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
