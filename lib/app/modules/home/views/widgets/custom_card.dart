import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {required this.imagetitle,
      required this.imageUrl,
      required this.profileImage,
      required this.imageLikes,
      super.key});

  final String imageUrl;
  final String profileImage;
  final String imagetitle;
  final int imageLikes;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                ),
                Text(
                  imagetitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  imageLikes.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
