import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "James",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "Normal",
          style: TextStyle(
            color: orange,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
