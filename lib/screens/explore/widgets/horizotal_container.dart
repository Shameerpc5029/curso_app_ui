import 'package:flutter/material.dart';
import 'package:ui_task/common/style/sizedbox.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 20,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * .4,
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.black12,
              Colors.black45,
            ],
            stops: [.5, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Popular in Music",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFFEAE37),
              ),
            ),
            KSizedBox.height5,
            const Text(
              "Complete Guitar Lessons System - Beginner",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            KSizedBox.height5,
            const Text(
              "Alex Sihotang",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
