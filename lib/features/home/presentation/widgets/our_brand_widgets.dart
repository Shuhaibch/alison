import 'package:alison/core/commen/widgets/container/rounded_container.dart';
import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:alison/core/commen/widgets/shimmer/shimmer_effect.dart';
import 'package:alison/core/commen/widgets/text/section_heading.dart';
import 'package:alison/core/utils/device/device_util.dart';
import 'package:alison/features/home/data/model/home_resp_model.dart';
import 'package:flutter/material.dart';

class OurBrandWidgets extends StatelessWidget {
  const OurBrandWidgets({super.key, required this.bestSeller});
  final List<BestSeller>? bestSeller;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        const CSectionHeading(title: "Our Brands"),
        SizedBox(
          height: height * .175,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestSeller!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: CRoundedImage(
                  imageUrl:
                      "https://swan.alisonsnewdemo.online/images/product/${bestSeller![index].image}",
                  fit: BoxFit.cover,
                  isNetworkImage: true,
                  borderRadius: 8,
                  height: height * .175,
                  width: width * .132,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class OurBrandShimmerWidgets extends StatelessWidget {
  const OurBrandShimmerWidgets({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Column(
      children: [
        const CSectionHeading(title: "Our Brands"),
        SizedBox(
          height: height * .175,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: CRoundedContainer(
                  height: height * .175,
                  width: width * .132,
                  radius: 8,
                  child: CShimmerEffect(
                    height: height * .175,
                    width: width * .132,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
