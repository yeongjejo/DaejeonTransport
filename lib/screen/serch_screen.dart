import 'package:flutter/material.dart';
import 'package:transport/screen/serve/base_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(body: Text("검색 화면"));
  }
}
