import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(
          0xffFFF2C5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 80, bottom: 80, left: 8, right: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0],
            ),
          ),
          child: Container(
              child: Column(
            children: [
              Spacer(),
              const Text('hello world',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  )),
              TextButton(onPressed: () {}, child: Text('read more')),
              SizedBox(
                height: 10,
              )
            ],
          )),
        ),
      ),
    );
  }
}
