import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/common/contents.dart';

import 'package:ui_task/common/style/sizedbox.dart';
import 'package:ui_task/screens/explore/widgets/courses_card.dart';
import 'package:ui_task/screens/explore/widgets/horizotal_container.dart';
import 'package:ui_task/screens/explore/widgets/topics_tile.dart';
import 'package:ui_task/screens/widgets/bottom_navigation_bar.dart';
import 'package:ui_task/screens/widgets/heading_windet.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Explore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const HorizontalContainer();
                },
                itemCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  HeadingWidget(
                    heading: 'Topics',
                    textButton: 'All Topic',
                    onPressed: () {},
                  ),
                  KSizedBox.height20,
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: List.generate(
                        topics.length,
                        (index) => TopicTile(
                          icon: topics[index]['icon'],
                          title: topics[index]['text'],
                        ),
                      ),
                    ),
                  ),
                  KSizedBox.height20,
                  const Divider(
                    color: Color(0xFFE6E9ED),
                  ),
                  HeadingWidget(
                    heading: 'Popular Courses',
                    textButton: 'See All',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoursesCards(
                    tilte: coursesDetials[index]['title'],
                    subTitle: coursesDetials[index]['subTitle'],
                    price: coursesDetials[index]['offerPrice'],
                    discountPrice: coursesDetials[index]['price'],
                  );
                },
                itemCount: coursesDetials.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
