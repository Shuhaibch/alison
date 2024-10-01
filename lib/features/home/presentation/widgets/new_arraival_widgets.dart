import 'package:alison/core/commen/widgets/product/new_big_product_card_widget.dart';
import 'package:alison/core/commen/widgets/product/new_small_product_card_widget.dart';
import 'package:alison/core/utils/color/colors.dart';
import 'package:alison/core/utils/constants/image_string.dart';
import 'package:alison/core/utils/device/device_util.dart';
import 'package:alison/core/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';

class NewArraivalWidgets extends StatelessWidget {
  const NewArraivalWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewBigProductCard(
                      height: height, image: CImageString.newbig, width: width),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CColors.blackColor),
                  ),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: CColors.blackColor),
                  ),
                  const SizedBox(height: CSizes.md),
                  NewSmallProductCard(
                      height: height,
                      image: CImageString.newsmall,
                      width: width),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CColors.blackColor),
                  ),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: CColors.blackColor),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewSmallProductCard(
                      height: height,
                      image: CImageString.newsmall,
                      width: width),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CColors.blackColor),
                  ),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: CColors.blackColor),
                  ),
                  const SizedBox(height: CSizes.md),
                  NewBigProductCard(
                      height: height, image: CImageString.newbig, width: width),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CColors.blackColor),
                  ),
                  const Text(
                    "text",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: CColors.blackColor),
                  )
                ],
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "View All",
              style: TextStyle(
                color: CColors.purpleColor,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewArraivalShimmerWidgets extends StatelessWidget {
  const NewArraivalShimmerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewBigProductCard(
                      height: height, image: CImageString.newbig, width: width),
                  const SizedBox(height: CSizes.md),
                  NewSmallProductCard(
                      height: height,
                      image: CImageString.newsmall,
                      width: width),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewSmallProductCard(
                      height: height,
                      image: CImageString.newsmall,
                      width: width),
                  const SizedBox(height: CSizes.md),
                  NewBigProductCard(
                      height: height, image: CImageString.newbig, width: width),
                ],
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "View All",
              style: TextStyle(
                color: CColors.purpleColor,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
