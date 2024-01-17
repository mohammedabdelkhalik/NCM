import 'package:flutter/material.dart';
import 'package:ncm/common/app_colors.dart';
import 'package:ncm/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Assets.images.icon.image(),
      actions: [
        IconButton(icon: Assets.svg.search.svg(), onPressed: () {}),
        IconButton(
          icon: Badge(backgroundColor: ColorsApp.greenColor, smallSize: 10, child: Assets.svg.notification.svg(width: 22)),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
