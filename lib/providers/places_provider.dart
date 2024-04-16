import 'package:flutter/material.dart';
import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier() : super([]);

  void addPlace(Place place) {
    state = [...state, place];
  }

  void removePlace(Place place) {
    List<Place> placeList = state;

    placeList.remove(place);

    state = placeList;
  }
}

final PlacesProvider = StateNotifierProvider((ref) => PlacesNotifier());
