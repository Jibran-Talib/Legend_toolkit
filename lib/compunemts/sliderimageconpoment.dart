import 'package:flutter/material.dart';

class SliderImageCompunent extends StatelessWidget {
  const SliderImageCompunent({super.key, required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
      child: Image(image: AssetImage(imagepath)),
    );
  }
}
