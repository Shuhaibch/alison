import 'package:alison/core/commen/widgets/product/product_card_widget.dart';
import 'package:alison/core/commen/widgets/text/section_heading.dart';
import 'package:alison/core/utils/color/colors.dart';
import 'package:alison/core/utils/constants/image_string.dart';
import 'package:alison/core/utils/device/device_util.dart';
import 'package:alison/features/home/data/model/home_resp_model.dart';
import 'package:flutter/material.dart';

class SuggestionWidgets extends StatelessWidget {
  const SuggestionWidgets(
      {super.key, required this.ourProduct, this.title = "Suggested For You"});
  final List<BestSeller> ourProduct;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        CSectionHeading(title: title),
        SizedBox(
          height: height * .32,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  children: [
                    ProductCard(
                      height: height,
                      image:
                          "https://swan.alisonsnewdemo.online/images/product/${ourProduct[index].image!}",
                      width: width,
                    ),
                    Text(
                      ourProduct[index].name!,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: CColors.blackColor),
                    ),
                    Text(
                      ourProduct[index].price!,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: CColors.blackColor),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SuggestionShimmerWidgets extends StatelessWidget {
  const SuggestionShimmerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        const CSectionHeading(title: "Suggested For You"),
        SizedBox(
          height: height * .32,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  children: [
                    ProductCard(
                      height: height,
                      image: CImageString.products2,
                      width: width,
                    ),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
