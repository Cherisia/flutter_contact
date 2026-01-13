import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Image.asset('shoes.jpg')
      // home: Text('hi')
      // home: Container( width: 50, height: 50, color: Colors.blue )
      // Flutter 의 모든 단위는 LP (Local Pixel) 1cm = 38LP
      // home: Center(
      //   child: Container( width: 50, height: 50, color: Colors.blue )
      // )
      home: Scaffold(
        // Scaffold : 레이아웃을 상중하로 나눠줌
        appBar: AppBar(
          leading: Icon(Icons.star), // 왼쪽에 넣을 아이콘
          title: Text('앱임'), // 왼쪽 제목
          actions: [ Text('안녕') ], // 우측 리스트
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SizedBox(
          // child: Text('안녕하세요',
          //     style: TextStyle(color: Color(0xffaaaaaa), fontWeight: FontWeight.w700),
          // )
          child: ElevatedButton(onPressed: (){}, child: Text('버튼'))
        ),
        // body: Align(
        //   // Align : 정렬
        //   alignment: Alignment.bottomCenter,
        //   child: Container(
        //     width: double.infinity, // 부모 width 안에서 무한히
        //     height: 50,
        //     // margin: EdgeInsets.all(20),
        //     margin: EdgeInsets.fromLTRB(10, 15, 15, 10), // 개별 margin
        //     padding: EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //       color: Colors.yellow,
        //       border: Border.all(color: Colors.red)
        //     ),
        //     child: Text('안녕')
        //   ),
        // ),

        // body: Row(
        //   // 세로정렬은 Column
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Row의 main 축 = 가로축 display flex
        //   crossAxisAlignment: CrossAxisAlignment.center, // 세로축 가운데 정렬
        //   children: [
        //     Icon(Icons.star),
        //     Icon(Icons.star),
        //     Icon(Icons.star)
        //   ]
        // ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            // Container는 기능이 많아서 무거우니 width, height 정도 필요하면 SizedBox
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
        ),
      )
    );
  }
}
