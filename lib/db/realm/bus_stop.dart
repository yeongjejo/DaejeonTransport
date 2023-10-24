import 'dart:ffi';

import 'package:realm/realm.dart';

part 'bus_stop.g.dart';

@RealmModel()
class _BusStop {
  late int busNodeID;
  late int busStopID;
  late String busStopName;
  late double gpsLati;
  late double gpsLong;
  late int routeCD;
}