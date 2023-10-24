import 'package:flutter/material.dart';
import 'package:transport/screen/serve/base_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:xml2json/xml2json.dart';


class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();
    setBusStopData();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(body: ListView(
      children: const <Widget>[
        ListTile(title: Text('아이템 1')),
        ListTile(title: Text('아이템 2')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        ListTile(title: Text('아이템 3')),
        // Add more ListTile widgets for additional items
      ],
      ),
    );
  }

  Future<void> setBusStopData() async {
    String serviceKey = 'PeW2ILEXoFUCJFLXDWwFS8km9iYlexGCCh90b77z1i%2BwoRdSqqW6aVR86xAsEswwv4uva%2BjIP9wgjhwxSt8J8w%3D%3D';
    String url = 'http://openapitraffic.daejeon.go.kr/api/rest/busRouteInfo/getStaionByRouteAll';
    url += "?serviceKey=$serviceKey";
    url += "&reqPage=1";

    // http://openapitraffic.daejeon.go.kr/api/rest/busRouteInfo/getStaionByRouteAll?serviceKey=PeW2ILEXoFUCJFLXDWwFS8km9iYlexGCCh90b77z1i%2BwoRdSqqW6aVR86xAsEswwv4uva%2BjIP9wgjhwxSt8J8w%3D%3D&reqPage=1
    // http://openapitraffic.daejeon.go.kr/api/rest/busRouteInfo/getStaionByRouteAll?PeW2ILEXoFUCJFLXDWwFS8km9iYlexGCCh90b77z1i%2BwoRdSqqW6aVR86xAsEswwv4uva%2BjIP9wgjhwxSt8J8w%3D%3D&reqPage=1
    debugPrint("$url");
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // HTTP 요청이 성공적으로 완료됨
      debugPrint('Response data: ${response.body}');
      // 여기에서 데이터 처리를 수행할 수 있습니다.

      // 데이터 가져오기
      final body = convert.utf8.decode(response.bodyBytes);

      // xml => json으로 변환
      final xml = Xml2Json()..parse(body);
      final json = xml.toParker();

      debugPrint('Request failed with status json: $json');
      // 필요한 데이터 찾기
      Map<String, dynamic> jsonResult = convert.json.decode(json);

      debugPrint('Request failed with status jsonResult: ${jsonResult['ServiceResult']['msgBody']}');

      for(var item in jsonResult['ServiceResult']['msgBody']['itemList']) {
        debugPrint('item : $item');
      }

    } else {
      // HTTP 요청이 실패함
      debugPrint('Request failed with status: ${response.statusCode}');


    }
  }
}



