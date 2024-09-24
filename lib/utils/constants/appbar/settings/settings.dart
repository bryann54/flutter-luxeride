import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';
import 'package:luxeride/utils/constants/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'Settings'),
      body: Container(
        color: AppColors.lightGrayColor,
      ),
    );
  }
}
