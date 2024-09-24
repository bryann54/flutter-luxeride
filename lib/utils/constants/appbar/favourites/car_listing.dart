import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxeride/services/car_widget.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';
import 'package:luxeride/utils/constants/colors.dart';

import '../../../../models/favsModel.dart';
import '../../constants.dart';

class Carlisting extends StatefulWidget {
  const Carlisting({super.key});

  @override
  State<Carlisting> createState() => _CarlistingState();
}

class _CarlistingState extends State<Carlisting> {
  List<Car> randomizedCarList = [];
  final ScrollController _scrollController = ScrollController();
  final int batchSize = 10;
  int currentLength = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    randomizedCarList = List<Car>.from(carList)..shuffle(Random());
    _loadMoreItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 200 &&
          !isLoading) {
        _loadMoreItems();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMoreItems() {
    if (currentLength >= randomizedCarList.length) return;

    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        final nextItems =
            randomizedCarList.skip(currentLength).take(batchSize).toList();
        currentLength += nextItems.length;
        randomizedCarList.addAll(nextItems);
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: ''),
      body: Container(
        color: AppColors.lightGrayColor,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CupertinoSearchTextField(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.manage_search,
                          color: AppColors.lightGrayColor,
                          size: 30,
                        ),
                      ),
                      placeholder: 'search a car',
                      style: const TextStyle(color: AppColors.lightGrayColor),
                      backgroundColor: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                      onChanged: (value) {
                        // Handle search query changes here
                      },
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset('assets/filter.png'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount:
                    currentLength + 1, // +1 to show the loading indicator
                itemBuilder: (context, index) {
                  if (index == currentLength) {
                    return Center(
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: AppColors.secondaryColor,
                            )
                          : const SizedBox.shrink(),
                    );
                  }
                  final car = randomizedCarList[index];
                  return CarModule(car: car);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
