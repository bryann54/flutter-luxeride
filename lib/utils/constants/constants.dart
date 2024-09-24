import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:luxeride/models/favsModel.dart';
import 'package:luxeride/utils/constants/colors.dart';
import 'package:provider/provider.dart';

import '../../services/car_widget.dart';
//custom snackbar

//car module container
class CarModule extends StatelessWidget {
  final Car car;

  const CarModule({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarDetails(car: car),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromARGB(233, 255, 255, 255)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image column
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      car.imageUrl,
                      height: 100,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Details column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          car.carName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          car.carDetails,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text(
                                'Rate per hour:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(254, 7, 7, 7),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Ksh: ${car.carPrice}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 179, 78, 10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(width: 50),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightGrayColor),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.darkGrayColor,
                      ),
                      height: 35,
                      width: 190,
                      child: const Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  FavoriteIcon(car: car),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//favourite icon
class FavoriteIcon extends StatelessWidget {
  final Car car;

  const FavoriteIcon({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        final isFavorite = favoriteProvider.isFavorite(car);
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: isFavorite
                    ? Colors.orangeAccent.shade400
                    : Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(
              onPressed: () {
                favoriteProvider.toggleFavorite(car);
                final snackBar = SnackBar(
                  content: Center(
                    child: Text(
                      isFavorite
                          ? '${car.carName}  removed from Bookmarks'
                          : '${car.carName}  added to Bookmars',
                    ),
                  ),
                  duration: const Duration(seconds: 1),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height - 180,
                    left: 10,
                    right: 10,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(
                Icons.bookmark,
                color: isFavorite
                    ? Colors.orangeAccent.shade400
                    : Colors.grey[300],
              ),
            ),
          ),
        );
      },
    );
  }
}

//custom carousel
class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 220,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: [
        CarouselItem(
          imageUrl: 'assets/coupee.avif',
          title: 'Catch Their Attention',
          description:
              'Rent the finest luxury cars for any occasion and make your entrance memorable.',
        ),
        CarouselItem(
          imageUrl: 'assets/yaris_car.png',
          title: 'convenient Cars ',
          description: 'Experience the thrill of driving convenient Cars.',
        ),
        CarouselItem(
          imageUrl: 'assets/van.png',
          title: 'Premium Vans to Rent',
          description:
              'Discover our premium collection of  spacious rental vans.',
        ),
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.imageUrl,
                      height: 100,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.darkGrayColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(254, 7, 7, 7),
                        ),
                        height: 40,
                        width: 200,
                        child: const Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class CarouselItem {
  final String imageUrl;
  final String title;
  final String description;

  CarouselItem({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
