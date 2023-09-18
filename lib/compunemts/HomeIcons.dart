import 'package:flutter/material.dart';
import 'package:legends_toolkit/ToolsList.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class DashboardIcons extends StatelessWidget {
  String imageUrl, iconName;

  DashboardIcons({super.key, required this.imageUrl, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ToolsList(
                tittle: iconName,
                imageurl: imageUrl,
              ),
            ));
      },
      child: Card(
        margin: EdgeInsets.all(8),
        color: Colors.grey.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imageUrl),
              height: 15.w,
              width: 15.w,
            ),
            Text(
              textAlign: TextAlign.center,
              iconName,
              style: TextStyle(
                fontSize: 3.w,
                fontFamily: 'BreeSerif',
              ),
            )
          ],
        ),
      ),
    );
  }
}
