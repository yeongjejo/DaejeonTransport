import 'dart:ffi';

import 'package:realm/realm.dart';

part 'bus_stop.g.dart';

@RealmModel()
class _BusStop {
  late int busNodeID;     // 정류소ARS-ID
  late int busStopID;     // 정류소ID
  late String busStopName;// 정류소명
  late double gpsLati;    // 정류소 위도좌표
  late double gpsLong;    // 정류소 경도좌표
  late int routeCD;       // 노선ID
}