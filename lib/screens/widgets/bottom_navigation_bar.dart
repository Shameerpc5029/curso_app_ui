
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/explore.svg',
            width: 28,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/mycourse.svg',
            width: 28,
          ),
          label: 'My Course',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/wishlist.svg',
            width: 28,
          ),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            width: 28,
          ),
          label: 'School',
        ),
      ],
      currentIndex: 0,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
      ),
      elevation: 10,
      unselectedItemColor: const Color(0xFF242B42),
      selectedItemColor: const Color(0xFF242B42),
      onTap: (value) {},
    );
  }
}
