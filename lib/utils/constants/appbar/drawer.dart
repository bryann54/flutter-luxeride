import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/favourites/favourites_page.dart';
import 'package:luxeride/utils/constants/appbar/profile/profile.dart';
import 'package:luxeride/utils/constants/appbar/rides/ridesScreen.dart';
import 'package:luxeride/utils/constants/appbar/settings/settings.dart';
import 'package:luxeride/utils/constants/buttons.dart';
import 'package:luxeride/utils/constants/colors.dart';

import 'wallet/wallet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildHeader(),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_balance_wallet,
                      color: AppColors.secondaryColor,
                      size: 27,
                    ),
                    title: const Text('Wallet'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Wallet()),
                      );
                    },
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.favorite_outline_rounded,
                      color: AppColors.secondaryColor,
                      size: 27,
                    ),
                    title: const Text('Favourites'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoritesScreen()),
                      );
                    },
                  ),
                ),

                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.receipt_long,
                      color: AppColors.secondaryColor,
                      size: 27,
                    ),
                    title: const Text('My rides'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RidesScreen()),
                      );
                    },
                  ),
                ),
                Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person_outline_outlined,color: AppColors.secondaryColor,size: 27,),
              title: Text('Notifications'),
                           onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilScreen()),
  );
},
            ),
          ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.settings,
                      color: AppColors.secondaryColor,
                      size: 27,
                    ),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsScreen()),
                      );
                    },
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 90,
                ),
                CustomButton(
                  onTap: () {},
                  text: 'Log Out',
                  customMessage: 'logout successful',
                  customTitle: 'LOGOUT',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    // You can replace these placeholder values with actual user data
    String username = 'UserName';
    String userAvatarUrl = 'assets/prof.png'; // Placeholder avatar image

    return DrawerHeader(
      decoration: const BoxDecoration(
        color: AppColors.darkGrayColor,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(userAvatarUrl),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    username,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
