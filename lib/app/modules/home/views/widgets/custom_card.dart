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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(imageUrl),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                ),
                Text(imagetitle),
                Text(imageLikes.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
