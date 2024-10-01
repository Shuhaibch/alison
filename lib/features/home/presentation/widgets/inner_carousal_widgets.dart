import 'package:alison/core/commen/widgets/container/rounded_container.dart';
import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:alison/core/commen/widgets/shimmer/shimmer_effect.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:alison/core/utils/constants/image_string.dart';
import 'package:alison/core/utils/device/device_util.dart';

class InnerCarusalWidgets extends StatefulWidget {
  const InnerCarusalWidgets({super.key, required this.image});
  final List image;
  @override
  State<InnerCarusalWidgets> createState() => _InnerCarusalWidgetsState();
}

class _InnerCarusalWidgetsState extends State<InnerCarusalWidgets> {
  late CarouselSliderController innerCarouselController;
  int innerCurrentPage = 0;

  @override
  void initState() {
    super.initState();
    innerCarouselController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return SizedBox(
      height: height * .25,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// Carouse lSlider
          Positioned.fill(
            child: CarouselSlider(
              carouselController: innerCarouselController,

              /// It's options
              options: CarouselOptions(
                height: height * .5,
                autoPlay: true,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                // viewportFraction: 1,
                disableCenter: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    innerCurrentPage = index;
                  });
                },
              ),

              /// Items
              items: widget.image.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    /// Custom Image Viewer widget
                    return CRoundedImage(
                      isNetworkImage: true,
                      width: double.infinity,
                      height: height * .3,
                      applyImageRadius: false,
                      imageUrl:
                          "https://swan.alisonsnewdemo.online/images/banner/$imagePath",
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
          ),

          /// Indicators
          Positioned(
            bottom: height * .02,
            child: Row(
              children: List.generate(
                widget.image.length,
                (index) {
                  bool isSelected = innerCurrentPage == index;
                  return GestureDetector(
                    onTap: () {
                      innerCarouselController.animateToPage(index);
                    },
                    child: AnimatedContainer(
                      width: isSelected ? 25 : 10,
                      height: 10,
                      margin:
                          EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.white
                            : const Color.fromARGB(137, 238, 238, 238),
                        borderRadius: BorderRadius.circular(
                          40,
                        ),
                      ),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InnerCarusalShimmerWidgets extends StatefulWidget {
  const InnerCarusalShimmerWidgets({
    super.key,
  });

  @override
  State<InnerCarusalShimmerWidgets> createState() =>
      _InnerCarusalShimmerWidgetsState();
}

class _InnerCarusalShimmerWidgetsState
    extends State<InnerCarusalShimmerWidgets> {
  late CarouselSliderController innerCarouselController;
  int innerCurrentPage = 0;

  @override
  void initState() {
    super.initState();
    innerCarouselController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    final image = [
      1,
      2,
      2,
    ];
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return SizedBox(
      height: height * .25,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// Carouse lSlider
          Positioned.fill(
            child: CarouselSlider(
              carouselController: innerCarouselController,

              /// It's options
              options: CarouselOptions(
                height: height * .5,
                autoPlay: true,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                // viewportFraction: 1,
                disableCenter: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    innerCurrentPage = index;
                  });
                },
              ),

              /// Items
              items: image.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    /// Custom Image Viewer widget
                    return CRoundedContainer(
                      width: double.infinity,
                      height: height * .3,
                      child: CShimmerEffect(
                          width: double.infinity, height: height * .3),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          /// Indicators
          Positioned(
            bottom: height * .02,
            child: Row(
              children: List.generate(
                image.length,
                (index) {
                  bool isSelected = innerCurrentPage == index;
                  return GestureDetector(
                    onTap: () {
                      innerCarouselController.animateToPage(index);
                    },
                    child: AnimatedContainer(
                      width: isSelected ? 25 : 10,
                      height: 10,
                      margin:
                          EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.white
                            : const Color.fromARGB(137, 238, 238, 238),
                        borderRadius: BorderRadius.circular(
                          40,
                        ),
                      ),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
