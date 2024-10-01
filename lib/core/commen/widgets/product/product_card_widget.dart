import 'package:alison/core/commen/widgets/container/rounded_container.dart';
import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:alison/core/commen/widgets/shimmer/shimmer_effect.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.height,
    required this.image,
    required this.width,
  });

  final double height;
  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CRoundedImage(
          height: height * .26,
          isNetworkImage: true,
          width: width * .1852,
          imageUrl: image,
          fit: BoxFit.cover,
        ),
        const Positioned(
          right: 15,
          top: 15,
          child: Icon(
            Icons.favorite,
            size: 25,
          ),
        )
      ],
    );
  }
}

class ProductShimmerCard extends StatelessWidget {
  const ProductShimmerCard({
    super.key,
    required this.height,
    required this.image,
    required this.width,
  });

  final double height;
  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CRoundedContainer(
          height: height * .26,
          width: width * .1852,
          child: CShimmerEffect(
            height: height * .26,
            width: width * .1852,
          ),
        ),
        const Positioned(
          right: 15,
          top: 15,
          child: Icon(
            Icons.favorite,
            size: 25,
          ),
        )
      ],
    );
  }
}
