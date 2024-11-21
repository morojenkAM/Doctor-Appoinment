import 'package:flutter/material.dart';

import '../../domain/entities/medical_center.dart';



class MedicalCenterCard extends StatelessWidget {
  final MedicalCenter center;

  const MedicalCenterCard({Key? key, required this.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                center.image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  center.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  center.address,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  "Rating: ${center.rating.toStringAsFixed(1)}",
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
