// import 'package:appinio_swiper/appinio_swiper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SwiperScreen extends StatelessWidget {
//   const SwiperScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       backgroundColor: CupertinoColors.black,
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height * 0.73,
//         width: MediaQuery.of(context).size.width,
//         child: AppinioSwiper(
//           cardBuilder: (BuildContext context, int index) {
//             return Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 color: const Color(
//                   0xffFFF2C5,
//                 ),
//               ),
//               //alignment: Alignment.center,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 25,
//                         width: 60,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(40),
//                           color: Colors.red,
//                         ),
//                         child: const Text(
//                           'LIVE',
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         "Demand for Dhaka Generic drugs Skyrockets in...",
//                         style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 0.5,
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: CircleAvatar(
//                         child: Text(index.toString()),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         "Update time",
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Color.fromARGB(255, 105, 103, 103),
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 0.5,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           cardCount: 10,
//         ),
//       ),
//     );
//   }
// }

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwiperScreen extends StatelessWidget {
  final String category; // Receive category from parent widget

  const SwiperScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Based on the category, you can filter or change the data shown in the swiper
    List<String> content = getContentForCategory(category);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.73,
        width: MediaQuery.of(context).size.width,
        child: AppinioSwiper(
          cardBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xffFFF2C5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                        ),
                        child: const Text(
                          'LIVE',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        content[
                            index], // Display the filtered content based on the category
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    Center(
                      child: CircleAvatar(
                        child: Text(index.toString()),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Update time",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 105, 103, 103),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          cardCount: content.length, // Adjust card count based on content
        ),
      ),
    );
  }

  List<String> getContentForCategory(String category) {
    // Example content based on the category
    switch (category) {
      case 'Trending':
        return [
          "Trending News 1",
          "Trending News 2",
          "Trending News 3",
          "Trending News 4"
        ];
      case 'Health':
        return [
          "Health News 1",
          "Health News 2",
          "Health News 3",
          "Health News 4"
        ];
      case 'Sports':
        return [
          "Sports News 1",
          "Sports News 2",
          "Sports News 3",
          "Sports News 4"
        ];
      case 'Fashion':
        return [
          "Fashion News 1",
          "Fashion News 2",
          "Fashion News 3",
          "Fashion News 4"
        ];
      case 'Finance':
        return [
          "Finance News 1",
          "Finance News 2",
          "Finance News 3",
          "Finance News 4"
        ];
      case 'All':
      default:
        return [
          "All News 1",
          "All News 2",
          "All News 3",
          "All News 4",
        ];
    }
  }
}
