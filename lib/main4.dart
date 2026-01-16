import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['가가', '나나', '다다'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, main4) {
            return ListTile(
              // leading: Image.asset('shoes.jpg'),
              leading: Text(like[main4].toString()),
              title: Text(name[main4]),
              trailing: TextButton(onPressed: () {
                setState(() {
                  like[main4]++;
                });
              }, child: Text('좋아요!')),
            );
          },
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
