import 'package:flutter/material.dart';
import 'package:luxeride/screens/mainscreen.dart';
import 'package:provider/provider.dart';

import 'models/favsModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Mainscreen());
  }
}
