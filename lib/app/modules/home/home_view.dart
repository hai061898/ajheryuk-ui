import 'package:ajheryuk/app/modules/home/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/category.dart';
import 'components/sliders.dart';
import 'components/story_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 75,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: Image.asset(
                          "assets/images/avatar-1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF4ED442),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello, Samurai!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icons/award.png"),
                          const SizedBox(width: 5),
                          const Text(
                            "+1600",
                            style: TextStyle(
                              color: Color(0xFFFCD034),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            " Points",
                            style: TextStyle(
                              color: Color(0xFFFCD034),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/icons/notification.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFFEC5F5F),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 25),
                StoryItem(story: "assets/images/story-1.jpg"),
                StoryItem(story: "assets/images/story-2.jpg"),
                StoryItem(story: "assets/images/story-3.jpg"),
                StoryItem(story: "assets/images/story-4.jpg"),
                StoryItem(story: "assets/images/story-5.jpg"),
                StoryItem(story: "assets/images/story-6.jpg"),
                StoryItem(story: "assets/images/story-7.jpg"),
                StoryItem(story: "assets/images/story-8.jpg"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: const [
                Text(
                  "Upcoming ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "course of this week",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 25),
                CategoryItem(
                  title: "All",
                  status: true,
                ),
                CategoryItem(
                  title: "UI/UX",
                  status: false,
                ),
                CategoryItem(
                  title: "Illustration",
                  status: false,
                ),
                CategoryItem(
                  title: "3D Animation",
                  status: false,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      controller.current.value = index;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.carouselController
                          .animateToPage(entry.key),
                      child: Obx(
                        () => Container(
                          width: 20,
                          height: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: controller.current.value == entry.key
                                ? const Color(0xFFEC5F5F)
                                : Colors.grey[400],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
