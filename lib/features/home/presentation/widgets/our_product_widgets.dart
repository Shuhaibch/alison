import 'package:alison/core/commen/widgets/container/rounded_container.dart';
import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:alison/core/commen/widgets/shimmer/shimmer_effect.dart';
import 'package:alison/core/commen/widgets/text/section_heading.dart';
import 'package:alison/core/utils/color/colors.dart';
import 'package:alison/core/utils/constants/image_string.dart';
import 'package:alison/core/utils/device/device_util.dart';
import 'package:alison/features/home/data/model/home_resp_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OurProductsWidgets extends StatefulWidget {
  const OurProductsWidgets({super.key, required this.ourProduct});
  final List<BestSeller> ourProduct;

  @override
  State<OurProductsWidgets> createState() => _OurProductsWidgetsState();
}

class _OurProductsWidgetsState extends State<OurProductsWidgets> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        const CSectionHeading(title: "Our Products"),
        SizedBox(
          width: width,
          height: height * .28,
          child: CarouselSlider.builder(
            itemCount: widget.ourProduct.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Column(
              children: [
                Stack(
                  children: [
                    CRoundedImage(
                      height: height * .28,
                      imageUrl:
                          "https://swan.alisonsnewdemo.online/images/product/${widget.ourProduct[itemIndex].image!}",
                      width: width * .2,
                      fit: BoxFit.cover,
                      isNetworkImage: true,
                    ),
                    const Positioned(
                      right: 5,
                      top: 12,
                      child: Icon(
                        Icons.favorite,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ],
            ),
            options: CarouselOptions(
              // autoPlayCurve: Easing.emphasizedAccelerate,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: .5,
              onPageChanged: (index, reason) {
                setState(() {
                  text = widget.ourProduct[index].name!;
                });
              },
              animateToClosest: false,
              scrollPhysics: const ClampingScrollPhysics(),
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              pageSnapping: false,
              viewportFraction: .45,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: CColors.blackColor),
        ),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: CColors.blackColor),
        )
      ],
    );
  }
}

class OurProductsShimmerWidgets extends StatefulWidget {
  const OurProductsShimmerWidgets({super.key});

  @override
  State<OurProductsShimmerWidgets> createState() =>
      _OurProductsShimmerWidgetsState();
}

class _OurProductsShimmerWidgetsState extends State<OurProductsShimmerWidgets> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    final image = [
      CImageString.topBanner,
      CImageString.topBanner,
      CImageString.topBanner,
      CImageString.topBanner,
    ];
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        const CSectionHeading(title: "Our Products"),
        SizedBox(
          width: width,
          height: height * .28,
          child: CarouselSlider.builder(
            itemCount: image.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Column(
              children: [
                Stack(
                  children: [
                    CRoundedContainer(
                      height: height * .28,
                      width: width * .2,
                      child: CShimmerEffect(
                        height: height * .28,
                        width: width * .2,
                      ),
                    ),
                    const Positioned(
                      right: 5,
                      top: 12,
                      child: Icon(
                        Icons.favorite,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ],
            ),
            options: CarouselOptions(
              // autoPlayCurve: Easing.emphasizedAccelerate,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: .5,
              onPageChanged: (index, reason) {
                setState(() {
                  text = index.toString();
                });
              },
              animateToClosest: false,
              scrollPhysics: const ClampingScrollPhysics(),
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              pageSnapping: false,
              viewportFraction: .45,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: CColors.blackColor),
        ),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: CColors.blackColor),
        )
      ],
    );
  }
}
