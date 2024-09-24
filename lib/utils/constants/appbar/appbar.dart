import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/profile/profile.dart';
import 'package:luxeride/utils/constants/colors.dart';

import 'favourites/favourites_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onDrawerIconTap;

  const CustomAppBar({
    super.key,
    this.onDrawerIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 12,
          ),
          Text(
            'Luxeride'.toUpperCase(),
            style:
                const TextStyle(color: AppColors.secondaryColor, fontSize: 22),
          ),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavoritesScreen()),
                );
              },
              child: const Icon(
                Icons.favorite_border,
                size: 30,
                color: AppColors.secondaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilScreen()),
                  );
                },
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(21, 7, 7, 7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      size: 30,
                      color: AppColors.secondaryColor,
                    )),
              ),
            )
          ])
        ],
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: AppColors.secondaryColor,
        ),
        onPressed: onDrawerIconTap,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//appbar without drawer

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackPressed;

  const CustomAppBar1({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackButton,
      title: Text(
        title,
        style: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600),
      ),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: onBackPressed ?? () => Navigator.pop(context),
              color: AppColors.secondaryColor,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
