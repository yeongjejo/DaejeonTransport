import 'package:flutter/material.dart';


class BaseWidget extends StatelessWidget {

  final Widget body;
  const BaseWidget({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  SizedBox(
                    child: Text(
                      "테스트 중입니다.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // 텍스트를 두껍게 설정
                        fontSize: 20.0
                      ),),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.star)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.map_outlined)),
                      ],
                    )
                  ),
                ],
              )
            ),
            Expanded(child: body),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){Navigator.of(context).pushNamed('/favorites');}, icon: const Icon(Icons.star)),
                  IconButton(onPressed: (){Navigator.of(context).pushNamed('/search');}, icon: const Icon(Icons.search)),
                  IconButton(onPressed: (){Navigator.of(context).pushNamed('/subway');}, icon: const Icon(Icons.subway)),
                  IconButton(onPressed: (){Navigator.of(context).pushNamed('/map');}, icon: const Icon(Icons.map_outlined)),
                  IconButton(onPressed: (){Navigator.of(context).pushNamed('/setting');}, icon: const Icon(Icons.settings)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
