import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  final String image;
  final String name;
  final String specialist;

  const DoctorItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.specialist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Dr. $name",
              // agar nama tidak nabrak border dan jadi 2 baris
              overflow: TextOverflow.fade,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              specialist,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
