// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_stop.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class BusStop extends _BusStop with RealmEntity, RealmObjectBase, RealmObject {
  BusStop(
    int busNodeID,
    int busStopID,
    String busStopName,
    double gpsLati,
    double gpsLong,
    int routeCD,
  ) {
    RealmObjectBase.set(this, 'busNodeID', busNodeID);
    RealmObjectBase.set(this, 'busStopID', busStopID);
    RealmObjectBase.set(this, 'busStopName', busStopName);
    RealmObjectBase.set(this, 'gpsLati', gpsLati);
    RealmObjectBase.set(this, 'gpsLong', gpsLong);
    RealmObjectBase.set(this, 'routeCD', routeCD);
  }

  BusStop._();

  @override
  int get busNodeID => RealmObjectBase.get<int>(this, 'busNodeID') as int;
  @override
  set busNodeID(int value) => RealmObjectBase.set(this, 'busNodeID', value);

  @override
  int get busStopID => RealmObjectBase.get<int>(this, 'busStopID') as int;
  @override
  set busStopID(int value) => RealmObjectBase.set(this, 'busStopID', value);

  @override
  String get busStopName =>
      RealmObjectBase.get<String>(this, 'busStopName') as String;
  @override
  set busStopName(String value) =>
      RealmObjectBase.set(this, 'busStopName', value);

  @override
  double get gpsLati => RealmObjectBase.get<double>(this, 'gpsLati') as double;
  @override
  set gpsLati(double value) => RealmObjectBase.set(this, 'gpsLati', value);

  @override
  double get gpsLong => RealmObjectBase.get<double>(this, 'gpsLong') as double;
  @override
  set gpsLong(double value) => RealmObjectBase.set(this, 'gpsLong', value);

  @override
  int get routeCD => RealmObjectBase.get<int>(this, 'routeCD') as int;
  @override
  set routeCD(int value) => RealmObjectBase.set(this, 'routeCD', value);

  @override
  Stream<RealmObjectChanges<BusStop>> get changes =>
      RealmObjectBase.getChanges<BusStop>(this);

  @override
  BusStop freeze() => RealmObjectBase.freezeObject<BusStop>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(BusStop._);
    return const SchemaObject(ObjectType.realmObject, BusStop, 'BusStop', [
      SchemaProperty('busNodeID', RealmPropertyType.int),
      SchemaProperty('busStopID', RealmPropertyType.int),
      SchemaProperty('busStopName', RealmPropertyType.string),
      SchemaProperty('gpsLati', RealmPropertyType.double),
      SchemaProperty('gpsLong', RealmPropertyType.double),
      SchemaProperty('routeCD', RealmPropertyType.int),
    ]);
  }
}
