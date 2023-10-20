import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';



class CheckPermissionScreen extends StatefulWidget {
  const CheckPermissionScreen({super.key});

  @override
  _CheckPermissionScreen createState() => _CheckPermissionScreen();
}

class _CheckPermissionScreen extends State<CheckPermissionScreen> {
  PermissionStatus _status = PermissionStatus.denied;

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    final status = await Permission.location.request();
    setState(() {
      _status = status;
    });

    if (status.isGranted) {
      // 권한 부여됨, 위치 서비스 사용 가능
      Navigator.of(context).pushNamed('/favorites');
    } else {
      openAppSettings();
      // 권한 거부됨, 처리 코드 추가
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      // child: Text('Location Permission Status: $_status'),
    );
  }
}
