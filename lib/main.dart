import 'package:flutter/material.dart';
import 'package:transport/screen/check_permssion_screen.dart';
import 'package:transport/screen/favorites_screen.dart';
import 'package:transport/screen/map_screen.dart';
import 'package:transport/screen/serch_screen.dart';
import 'package:transport/screen/setting_screen.dart';
import 'package:transport/screen/subway_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
    
      initialRoute: '/permission',
      routes: {
        '/permission' : (BuildContext context) => const CheckPermissionScreen(),
        '/favorites' : (BuildContext context) => const FavoritesScreen(),
        '/map' : (BuildContext context) => MapScreen(),
        '/subway' : (BuildContext context) => const SubWayScreen(),
        '/search' : (BuildContext context) => const SearchScreen(),
        '/setting' : (BuildContext context) => const SettingScreen(),
      },
    ),
  ));
}
