import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';
import 'package:luxeride/utils/constants/colors.dart';

import '../models/favsModel.dart';
import '../utils/constants/constants.dart';

class CarDetails extends StatelessWidget {
  final Car car;

  const CarDetails({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'Car Details'),
      body: Container(
        color: AppColors.lightGrayColor,
        child: SingleChildScrollView(
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
                              car.imageUrl,
                              height: 200,
                              width: 330,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        height: 50,
                        width: 50,
                        top: 0,
                        right: 0,
                        child: FavoriteIcon(car: car),
                      ),
                    ],
                  ),
                ),
                // Car name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Name:',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            car.carName,
                            style: const TextStyle(
                              color: AppColors.darkGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Car description
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Description:',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            car.carDetails,
                            style: const TextStyle(
                              color: AppColors.darkGrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Car details
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Details:',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 23,
                                        width: 23,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              const Color.fromARGB(27, 141, 142, 152),
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.attractions_rounded,
                                          color:
                                              Color.fromARGB(155, 255, 132, 1),
                                          size: 17,
                                        ))),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Engine Capacity:',
                                      style: TextStyle(
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  car.engineCapacity,
                                  style: const TextStyle(
                                    color: AppColors.darkGrayColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                27, 141, 142, 152),
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons
                                                .panorama_wide_angle_select_sharp,
                                            color: Color.fromARGB(
                                                155, 255, 132, 1),
                                            size: 17,
                                          ))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'torque:',
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    car.engineTorque,
                                    style: const TextStyle(
                                      color: AppColors.darkGrayColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                27, 141, 142, 152),
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons.color_lens_rounded,
                                            color: Color.fromARGB(
                                                155, 255, 132, 1),
                                            size: 17,
                                          ))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Exterior Color:',
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    car.exteriorColor,
                                    style: const TextStyle(
                                      color: AppColors.darkGrayColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                27, 141, 142, 152),
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons.safety_divider_sharp,
                                            color: Color.fromARGB(
                                                155, 255, 132, 1),
                                            size: 17,
                                          ))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Interior:',
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    car.interiorColor,
                                    style: const TextStyle(
                                      color: AppColors.darkGrayColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 23,
                                    width: 23,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromARGB(27, 141, 142, 152),
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.safety_divider,
                                      color: Color.fromARGB(155, 255, 132, 1),
                                      size: 17,
                                    ))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Seats capacity:',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              car.seats,
                              style: const TextStyle(
                                color: AppColors.darkGrayColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 23,
                                    width: 23,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromARGB(27, 141, 142, 152),
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.map_outlined,
                                      color: Color.fromARGB(155, 255, 132, 1),
                                      size: 17,
                                    ))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Seat Material:',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              car.seatMaterial,
                              style: const TextStyle(
                                color: AppColors.darkGrayColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 23,
                                    width: 23,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromARGB(27, 141, 142, 152),
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.transform_outlined,
                                      color: Color.fromARGB(155, 255, 132, 1),
                                      size: 17,
                                    ))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Transmission:',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              car.transmission,
                              style: const TextStyle(
                                color: AppColors.darkGrayColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 23,
                                    width: 23,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromARGB(27, 141, 142, 152),
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.local_gas_station,
                                      color: Color.fromARGB(155, 255, 132, 1),
                                      size: 17,
                                    ))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Fuel Type:',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              car.fuelType,
                              style: const TextStyle(
                                color: AppColors.darkGrayColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            const Color.fromARGB(27, 141, 142, 152),
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.garage,
                                        color: Color.fromARGB(155, 255, 132, 1),
                                        size: 17,
                                      ))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Body type:',
                                    style: TextStyle(
                                      color: AppColors.secondaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                car.bodyType,
                                style: const TextStyle(
                                  color: AppColors.darkGrayColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Rate per hour
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Rate per Hour:',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Ksh: ${car.carPrice}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 210, 77, 10),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Book Now button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.darkGrayColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Car> carList = [
  Car(
    imageUrl: 'assets/golf_car.png',
    carName: 'Golf R',
    carDetails: 'A fast and reliable car to help you punish road ragers',
    carPrice: 2000,
    exteriorColor: 'Blue',
    seats: '5',
    interiorColor: 'Black',
    transmission: 'Automatic',
    seatMaterial: 'Leather',
    engineCapacity: '2.0L',
    engineTorque: '280 HP',
    bodyType: 'Hatchback',
    fuelType: 'Petrol',
  ),
  Car(
    imageUrl: 'assets/patrol.webp',
    carName: 'Nissan Patrol',
    carDetails:
        'has a long-time reputation as a nice-driving large 4WD wagon with real off-road capability and a proven track record as a great towing platform. And current-generation Y62 Patrols, powered by a 5.6-litre petrol V8',
    carPrice: 2000,
    exteriorColor: 'White',
    seats: '7',
    interiorColor: 'Beige',
    transmission: 'Automatic',
    seatMaterial: 'Cloth',
    engineCapacity: '4.0L',
    engineTorque: '394 HP',
    bodyType: 'SUV',
    fuelType: 'Petrol',
  ),
  Car(
    imageUrl: 'assets/van.png',
    carName: 'Mercedes van',
    carDetails:
        'The 2022 Mercedes-Benz Sprinter and its variants offer ample space, making them ideal for customization projects.',
    carPrice: 6500,
    exteriorColor: 'Silver',
    seats: '8',
    interiorColor: 'Gray',
    transmission: 'Automatic',
    seatMaterial: 'Leather',
    engineCapacity: '2.1L',
    engineTorque: '250 HP',
    bodyType: 'Van',
    fuelType: 'Diesel',
  ),
  Car(
    imageUrl: 'assets/golf_car.png',
    carName: 'Golf R',
    carDetails:
        'n a new car market where lease and PCP dominate, its mix of value for monthly expenditure and extreme real-world performance have made it an unstoppable force.',
    carPrice: 10000,
    exteriorColor: 'Red',
    seats: '5',
    interiorColor: 'Black',
    transmission: 'Manual',
    seatMaterial: 'Leather',
    engineCapacity: '2.0L',
    engineTorque: '280 HP',
    bodyType: 'Hatchback',
    fuelType: 'Petrol',
  ),
  Car(
    imageUrl: 'assets/yaris_car.png',
    carName: 'Toyota Yaris',
    carDetails:
        "The Yaris is a good vehicle for first-time car owners who don't want to spend too much on repair and maintenance",
    carPrice: 2000,
    exteriorColor: 'Blue',
    seats: '5',
    interiorColor: 'Black',
    transmission: 'Automatic',
    seatMaterial: 'Cloth',
    engineCapacity: '1.5L',
    engineTorque: '103 HP',
    bodyType: 'Sedan',
    fuelType: 'Petrol',
  ),
  Car(
    imageUrl: 'assets/tx-removebg-preview.png',
    carName: 'Toyota Prado TX',
    carDetails:
        'The Diesel engine is 4461 cc while the Petrol engine is 3956 cc . It is available with Automatic transmission',
    carPrice: 4000,
    exteriorColor: 'Black',
    seats: '7',
    interiorColor: 'Beige',
    transmission: 'Automatic',
    seatMaterial: 'Leather',
    engineCapacity: '2.8L',
    engineTorque: '450 HP',
    bodyType: 'SUV',
    fuelType: 'Diesel',
  ),
  Car(
    imageUrl: 'assets/luxe.png',
    carName: 'Dodge Charger',
    carDetails:
        'Well, the Dodge Charger is proud to be the worlds first four-door muscle car.',
    carPrice: 5000,
    exteriorColor: 'Red',
    seats: '5',
    interiorColor: 'Black',
    transmission: 'Manual',
    seatMaterial: 'Leather',
    engineCapacity: '3.6L',
    engineTorque: '260 HP',
    bodyType: 'Sedan',
    fuelType: 'Petrol',
  ),
  Car(
    imageUrl: 'assets/sedan.png',
    carName: 'Lexus ES350',
    carDetails:
        'a 3.5-liter V-6 that generates 302 horsepower and is teamed with an eight-speed automatic transmission that sends power to the front wheels.',
    carPrice: 3000,
    exteriorColor: 'Black',
    seats: '5',
    interiorColor: 'Black',
    transmission: 'Automatic',
    seatMaterial: 'Leather',
    engineCapacity: '2.4L',
    engineTorque: '184 HP',
    bodyType: 'Sedan',
    fuelType: 'Petrol',
  ),
];
