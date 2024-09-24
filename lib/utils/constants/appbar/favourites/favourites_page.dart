// screens/favorites_screen.dart
import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';
import 'package:luxeride/utils/constants/appbar/favourites/car_listing.dart';
import 'package:luxeride/utils/constants/colors.dart';
import 'package:provider/provider.dart';

import '../../../../models/favsModel.dart';
import '../../constants.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'Favourites'),
      body: Container(
        color: AppColors.lightGrayColor,
        child: Consumer<FavoriteProvider>(
          builder: (context, favoriteProvider, child) {
            final favorites = favoriteProvider.favorites;
            if (favorites.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: const Color.fromARGB(66, 255, 255, 255)),
                      child: Image.asset(
                        'assets/app-icon.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'No favorites yet!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Carlisting(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryColor,
                          ),
                          child: const Center(
                              child: Text(
                            'View Car Listing',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: AppColors.whiteColor),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
            return ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final car = favorites[index];
                return CarModule(car: car);
              },
            );
          },
        ),
      ),
    );
  }
}
