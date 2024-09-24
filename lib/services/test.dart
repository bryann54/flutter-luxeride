import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';

import '../utils/constants/colors.dart';

class FavoitesScreen extends StatefulWidget {
  const FavoitesScreen({super.key});

  @override
  State<FavoitesScreen> createState() => _FavoitesScreenState();
}

class _FavoitesScreenState extends State<FavoitesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'Favourites'),
      body: Container(
        color: AppColors.lightGrayColor,
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    final snackBar = SnackBar(
      content: Center(
          child: Text(
              isFavorite ? 'Added to favorites' : 'Removed from favorites')),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.red),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: IconButton(
          onPressed: toggleFavorite,
          icon: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.grey[200],
          ),
        ),
      ),
    );
  }
}

class CarDetails extends StatefulWidget {
  final String imageUrl;
  final String carName;
  final String carDetails;
  final int carPrice;

  const CarDetails({
    super.key,
    required this.imageUrl,
    required this.carName,
    required this.carDetails,
    required this.carPrice,
  });

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 180, 180),
      appBar: const CustomAppBar1(title: 'Car Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image column
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              widget.imageUrl,
                              height: 200,
                              width: 330,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        height: 50,
                        width: 50,
                        top: 0,
                        right: 0,
                        child: FavoriteIcon(),
                      ),
                    ],
                  )),
              // Details column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(136, 254, 254, 255)),
                      height: 60,
                      child: Column(
                        children: [
                          const Text(
                            'Name:  ',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.carName,
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(136, 254, 254, 255),
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Rate per Hour:',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Ksh: ${widget.carPrice}',
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 244, 86, 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(92, 255, 255, 255),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Car description:  ',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Center(
                            child: Text(
                              widget.carDetails,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(92, 255, 255, 255),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              'More Details:  ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Capacity:',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '2200cc',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                Container(
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Torque:',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '125HP',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Interior:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Beige Leather Seats',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Fuel Type:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Petrol',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'seats:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.lightGrayColor),
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.darkGrayColor,
                        ),
                        height: 50,
                        width: 300,
                        child: const Center(
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarModule extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String carDetails;
  final int price;

  const CarModule({
    super.key,
    required this.imageUrl,
    required this.carName,
    required this.carDetails,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarDetails(
                imageUrl: imageUrl,
                carName: carName,
                carDetails: carDetails,
                carPrice: price,
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image column
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      imageUrl,
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
                          carName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          carDetails,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Rate per hour:',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(254, 7, 7, 7),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'ksh $price',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Color.fromARGB(255, 179, 78, 10)),
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
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightGrayColor),
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.darkGrayColor,
                    ),
                    height: 50,
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
                  const SizedBox(
                    width: 50,
                  ),
                  const FavoriteIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
