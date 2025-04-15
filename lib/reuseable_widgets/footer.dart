import 'package:demo30/utility/all_colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'powered by',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            ' M360 ICT',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AllColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
