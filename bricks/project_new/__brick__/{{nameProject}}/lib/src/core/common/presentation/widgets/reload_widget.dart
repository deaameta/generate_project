import 'package:flutter/material.dart';
import 'package:{{nameProject}}/src/core/core.dart';

class ReloadWidget extends StatelessWidget {
  final String content;
  final VoidCallback? onPressed;

  // final String image;
  final IconData iconData;

  const ReloadWidget.empty({Key? key, required this.content, this.onPressed})
      // : image = "assets/images/no_records.png",
      : iconData = Icons.web_asset_sharp,
        super(key: key);

  const ReloadWidget.error({Key? key, required this.content, required this.onPressed})
      // : image = "assets/images/something_went_wrong.png",
      : iconData = Icons.error_outline,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image.asset(image, width: SizeConfig.h(100), height: SizeConfig.h(100)),
          Icon(
            iconData,
            size: SizeConfig.h(80),
            color: Theme.of(context).cardColor,
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          if (onPressed != null)
            Icon(
              Icons.refresh,
              color: Theme.of(context).iconTheme.color,
            ),
        ],
      ),
    );
  }
}
