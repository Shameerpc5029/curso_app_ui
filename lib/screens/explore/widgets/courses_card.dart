
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/common/style/colors.dart';
import 'package:ui_task/common/style/sizedbox.dart';

class CoursesCards extends StatelessWidget {
  const CoursesCards({
    super.key,
    required this.tilte,
    required this.subTitle,
    required this.price,
    required this.discountPrice,
  });

  final String tilte;
  final String subTitle;
  final String price;
  final String discountPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {},
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: const LinearGradient(
                  colors: [
                    Colors.black54,
                    Colors.black12,
                  ],
                  stops: [.2, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1h 12m • 5 Lessons',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        print('save');
                      },
                      child: SvgPicture.asset('assets/icons/Fav.svg'))
                ],
              ),
            ),
            KSizedBox.height10,
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tilte,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  KSizedBox.height5,
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  KSizedBox.height5,
                  Row(
                    children: [
                      Text(
                        discountPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColor.themeColor,
                        ),
                      ),
                      KSizedBox.width5,
                      Text(
                        price,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
