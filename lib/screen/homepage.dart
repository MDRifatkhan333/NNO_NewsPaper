import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nno_newspaper/screen/swiper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var newsitemlist = [
    'Tranding',
    'Health ',
    'Sports',
    'Fashion',
    'finance',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Z',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Text('News'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.all_inclusive),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  //color: Colors.red,
                  width: 130,
                  height: 100,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      newsitemlist[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Example(),
          ],
        ),
      ),
    );
  }
}
