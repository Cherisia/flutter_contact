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
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, size: 50,),
                Text('안녕')
              ],
            ),
            Row(
              children: [
                Icon(Icons.account_circle, size: 50,),
                Text('안녕')
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: BottomNavigationItems(),
        ),
      ),
    );
  }
}

class BottomNavigationItems extends StatelessWidget {
  const BottomNavigationItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 50,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
        IconButton(onPressed: (){}, icon: Icon(Icons.message)),
        IconButton(onPressed: (){}, icon: Icon(Icons.person)),
      ],
    );
  }
}
