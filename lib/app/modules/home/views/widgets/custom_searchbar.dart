import 'package:flutter/material.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
            hintText: "Search items,collections,and accounts",
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            suffix: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic_none_rounded),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
