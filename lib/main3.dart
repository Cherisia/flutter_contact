import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('금호동3가'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('shoes.jpg', width: 120),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DLSR 100D 팔아요'),
                    Text('일산서구 주엽동'),
                    Text('30000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border),
                        Text('4')
                      ],
                    )
                  ],
                )
              ),
            ],
          )
        )
      )
    );
  }
}
