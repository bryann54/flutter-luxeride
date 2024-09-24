import 'dart:math'; // Import this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/colors.dart';
import 'package:luxeride/utils/constants/constants.dart';
import '../models/favsModel.dart';
import '../services/brand_model.dart';
import '../services/car_widget.dart';
import '../utils/constants/appbar/appbar.dart';
import '../utils/constants/appbar/drawer.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Shuffle the carList
    final randomizedCarList = List<Car>.from(carList)..shuffle(Random());

    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        onDrawerIconTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      drawer: const AppDrawer(),
      body: Container(
        color: AppColors.lightGrayColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: AppColors.customred,
                            width: 2,
                          ),
                          color: const Color.fromARGB(247, 7, 7, 7),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                const SizedBox(height: 30),
                                const Text(
                                  'With affordable luxury..',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  'Enjoy your every ride',
                                  style: TextStyle(
                                      color: Color.fromARGB(186, 141, 142, 152),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 40),
                                SizedBox(
                                  height: 50,
                                  width: 370,
                                  child: CupertinoSearchTextField(
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.manage_search,
                                        color:
                                            Color.fromARGB(160, 255, 255, 255),
                                        size: 30,
                                      ),
                                    ),
                                    placeholder: 'search a car',
                                    style: const TextStyle(color: Colors.white),
                                    backgroundColor: const Color.fromARGB(
                                        141, 141, 142, 152),
                                    borderRadius: BorderRadius.circular(50.0),
                                    onChanged: (value) {
                                      // Handle search query changes here
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: const Color.fromRGBO(255, 255, 255, 1),
                height: 155,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Top Brands',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 6, 62, 54),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Icon(
                              Icons.verified,
                              color: AppColors.primaryColor,
                              size: 25,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color.fromARGB(245, 255, 4, 8),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: BrandsRepository.brands.map((brand) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 157, 156, 156),
                                        border: Border.all(
                                            color: AppColors.customred),
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                          ),
                                          child: Image.asset(
                                            brand.logoAssetPath,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    brand.name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: const Color.fromRGBO(255, 255, 255, 1),
                height: 200,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Choose By category',
                            style: TextStyle(
                                color: Color.fromARGB(255, 6, 62, 54),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color.fromARGB(245, 255, 4, 8),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: CategoryList.category.map((category) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        color: const Color.fromARGB(
                                            71, 236, 239, 241),
                                        border: Border.all(
                                            color: AppColors.customred),
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          color: AppColors.lightGrayColor,
                                        ),
                                        child: SizedBox(
                                          height: 100,
                                          width: 100,
                                          child: Image.asset(
                                            category.imageAssetPath,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    category.name,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: SizedBox(
                  height: 250,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.LightBlue,
                        ),
                        child: const CustomCarousel(),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: randomizedCarList
                    .map((car) => CarModule(car: car))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
