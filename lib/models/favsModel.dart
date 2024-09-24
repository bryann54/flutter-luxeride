// models/favorite_model.dart
import 'package:flutter/material.dart';

// models/favorite
class Car {
  final String imageUrl;
  final String carName;
  final String carDetails;
  final int carPrice;
  final String exteriorColor;
  final String seats;
  final String interiorColor;
  final String transmission;
  final String seatMaterial;
  final String engineCapacity;
  final String engineTorque;
  final String bodyType;
  final String fuelType;

  Car({
    required this.imageUrl,
    required this.carName,
    required this.carDetails,
    required this.carPrice,
    required this.exteriorColor,
    required this.seats,
    required this.interiorColor,
    required this.transmission,
    required this.seatMaterial,
    required this.engineCapacity,
    required this.engineTorque,
    required this.bodyType,
    required this.fuelType,
  });
}

class FavoriteProvider with ChangeNotifier {
  final List<Car> _favorites = [];

  List<Car> get favorites => _favorites;

  void toggleFavorite(Car car) {
    if (_favorites.contains(car)) {
      _favorites.remove(car);
    } else {
      _favorites.add(car);
    }
    notifyListeners();
  }

  bool isFavorite(Car car) {
    return _favorites.contains(car);
  }
}
