import 'package:flutter/material.dart';

class SpesialistItem extends StatelessWidget {
  final String imagePath;
  final String imageName;
  const SpesialistItem(
      {Key? key, required this.imagePath, required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 32,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            imageName,
            style: const TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
