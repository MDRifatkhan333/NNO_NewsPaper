// import 'package:flutter/material.dart';
// import 'package:nno_newspaper/screen/swiper.dart';
// import 'package:nno_newspaper/widgets/mainBottomNavBar.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var newsitemlist = [
//     'All',
//     'Trending',
//     'Health',
//     'Sports',
//     'Fashion',
//     'Finance',
//   ];

//   int selectedIndex = -1; // Initially, no button is selected

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Image.asset(
//           'assets/images/NNO_NEWS_logo.png',
//           height: 100,
//           width: 150,
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.dashboard_outlined),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 50,
//               child: ListView.builder(
//                 itemCount: newsitemlist.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) => Container(
//                   width: 130,
//                   height: 100,
//                   margin: const EdgeInsets.symmetric(horizontal: 5),
//                   child: TextButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = index; // Update the selected index
//                       });
//                     },
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(
//                         selectedIndex == index ? Colors.blue : Colors.grey[800],
//                       ),
//                       // shape: MaterialStateProperty.all(
//                       //   RoundedRectangleBorder(
//                       //     borderRadius: BorderRadius.circular(8.0),
//                       //   ),
//                       // ),
//                     ),
//                     child: Text(
//                       newsitemlist[index],
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const SwiperScreen(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const mainBottomNavBar(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nno_newspaper/presentation/ui/widgets/swiper.dart';
import 'package:nno_newspaper/widgets/mainBottomNavBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var newsitemlist = [
    'All',
    'Trending',
    'Health',
    'Sports',
    'Fashion',
    'Finance',
  ];

  int selectedIndex = -1; // Initially, no button is selected
  String selectedCategory = 'All'; // Default selected category

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
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: newsitemlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 130,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = index; // Update the selected index
                        selectedCategory =
                            newsitemlist[index]; // Update the selected category
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        selectedIndex == index ? Colors.blue : Colors.grey[800],
                      ),
                    ),
                    child: Text(
                      newsitemlist[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Pass selectedCategory to SwiperScreen
            SwiperScreen(category: selectedCategory),
          ],
        ),
      ),
      bottomNavigationBar: const mainBottomNavBar(),
    );
  }
}
