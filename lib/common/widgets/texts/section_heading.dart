import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionbutton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionbutton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        if (showActionbutton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
