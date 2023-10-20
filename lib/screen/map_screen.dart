import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location_platform_interface/location_platform_interface.dart';
import 'package:transport/screen/serve/base_screen.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../provider/map_provider.dart';


class MapScreen extends ConsumerWidget {
  // const MapScreen({Key? key}) : super(key: key);

  static const _london = LatLng(36.362530384643, 127.34486028546);
  static const _paris = LatLng(48.8566, 2.3522);
  static const _dublin = LatLng(53.3498, -6.2603);

  static const _markers = [
    Marker(
        width: 80,
        height: 80,
        point: _london,
        child: IconTest(),
        rotate: true
    ),
    Marker(
      width: 80,
      height: 80,
      point: _dublin,
      child: FlutterLogo(key: ValueKey('green')),
    ),
    Marker(
      width: 80,
      height: 80,
      point: _paris,
      child: FlutterLogo(key: ValueKey('purple')),
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(locationProvider);

    return BaseWidget(
      body: FlutterMap(
        mapController: MapController(),
        options: MapOptions(
          initialCenter: LatLng(36.362530384643, 127.34486028546),
          initialZoom: 17,
          maxZoom: 25,
          minZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          const MarkerLayer(markers: _markers), // 버스 정류장들
          currentUserLocationMarker(locationAsyncValue)  // 현재위치
        ],


      ),
    );
  }

  currentUserLocationMarker(AsyncValue<LocationData> locationAsyncValue) {
    return locationAsyncValue.when(data: (currentLocation) {
      return MarkerLayer(
        markers: [Marker(
          width: 80,
          height: 80,
          point:  LatLng(currentLocation.latitude??0.0, currentLocation.longitude??0.0),
          child: currentLocitionMarker(),
          rotate: true
      )],
      );

    },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}


class IconTest extends StatelessWidget {
  const IconTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(onPressed: (){debugPrint("클릭성공");}, child: Text("Theme.of(contex"));
    return IconButton(onPressed: (){}, icon: Icon(Icons.location_on), iconSize: 40.0);
  }
}

class currentLocitionMarker extends StatelessWidget {
  const currentLocitionMarker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.circle), iconSize: 40.0);
  }
}