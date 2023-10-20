import 'package:location/location.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final locationProvider = FutureProvider<LocationData>((ref) async {
  final location = Location();
  final hasPermission = await location.hasPermission();
  if (hasPermission == PermissionStatus.granted) {
    return location.getLocation();
  } else {
    throw Exception('Location permission denied');
  }
});
