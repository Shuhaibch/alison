import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:flutter/material.dart';

class NewSmallProductCard extends StatelessWidget {
  const NewSmallProductCard({
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
          height: height * .14,
          width: width * .199,
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

class NewSmallProductShimmerCard extends StatelessWidget {
  const NewSmallProductShimmerCard({
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
          height: height * .14,
          width: width * .199,
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
