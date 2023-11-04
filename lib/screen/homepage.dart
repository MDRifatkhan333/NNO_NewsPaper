import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nno_newspaper/screen/swiper.dart';
import 'package:nno_newspaper/widgets/mainBottomNavBar.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/NNO_NEWS_logo.png',
          height: 100,
          width: 150,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: newsitemlist.length,
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
            const SwiperScreen(),
          ],
        ),
      ),
      bottomNavigationBar: const mainBottomNavBar(),
    );
  }
}
