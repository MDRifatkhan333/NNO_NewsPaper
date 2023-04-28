import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNewsPaperCard extends StatefulWidget {
  const MyNewsPaperCard({super.key});

  @override
  State<MyNewsPaperCard> createState() => _MyNewsPaperCardState();
}

class _MyNewsPaperCardState extends State<MyNewsPaperCard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.65,
        // width: MediaQuery.of(context).size.width,
        child: AppinioSwiper(
          cardsCount: 20,
          cardsBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Untitled.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Color(0x003f51b5), Color(0xe0000000)],
                    stops: [0.5, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(0, 56, 57, 61),
                        Color(0xe0000000)
                      ],
                      stops: [0.5, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // PAGE COUNTER
                        // Center(
                        //   child: CircleAvatar(
                        //     child: Text(index.toString()),
                        //   ),
                        // ),
                        const Spacer(),
                        const Text('News title / headline goes here ',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            )),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Read More',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
