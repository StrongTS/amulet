import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://randomuser.me/api/portraits/women/5.jpg",
        ),
        radius: 23,
      ),
    );
  }
}
