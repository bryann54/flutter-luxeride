import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';

import '../../colors.dart';

class RidesScreen extends StatefulWidget {
  const RidesScreen({super.key});

  @override
  State<RidesScreen> createState() => _RidesScreenState();
}

class _RidesScreenState extends State<RidesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'My rides'),
      body: Container(
        color: AppColors.lightGrayColor,
      ),
    );
  }
}
