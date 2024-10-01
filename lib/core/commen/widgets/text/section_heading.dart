import 'package:alison/core/utils/color/colors.dart';
import 'package:flutter/material.dart';

class CSectionHeading extends StatelessWidget {
  const CSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "View All",
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: const TextStyle(
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
