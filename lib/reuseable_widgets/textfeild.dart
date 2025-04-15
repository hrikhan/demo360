import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  const Textfeild({super.key, required this.lebel, required this.hint});
  final String lebel;
final String hint;
  @override
  Widget build(BuildContext context) {
    return               TextField(
                decoration: InputDecoration(
                  labelText: lebel,
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: hint,
                ),
              );
  }
}