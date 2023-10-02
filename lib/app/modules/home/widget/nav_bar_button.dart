import 'package:amulet/app/utils/colors.dart';
import 'package:flutter/material.dart';

class NavBarButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  const NavBarButton({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: buttonColor,
          ),
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: TextStyle(
            color: isSelected ? orange : Colors.grey,
          ),
        )
      ],
    );
  }
}
