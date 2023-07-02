import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWritePage extends StatefulWidget {
  const PostWritePage({super.key});

  @override
  State<PostWritePage> createState() => _PostWritePageState();
}

class _PostWritePageState extends State<PostWritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff161E31),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF9B17A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Post/Write",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
              const MyPostWrite(
                Title: "Lorem ipsum",
                Content:
                    "Lorem ipsum dolor sit amet,  sed do eiusmod tempor incididunt ut labore et dolore ma ex ea commodo consequat.",
                viewValue: "150",
                likeValue: "150",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPostWrite extends StatelessWidget {
  const MyPostWrite({
    super.key,
    required this.Title,
    required this.Content,
    required this.viewValue,
    required this.likeValue,
  });
  final String Title;
  final String Content;
  final String viewValue;
  final String likeValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: const Color(0xff424769),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      Title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      Content,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 160, 154, 154),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "View : $viewValue",
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 177, 171, 171),
                              ),
                            ),
                            Text(
                              "Like : $likeValue",
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 177, 171, 171),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffF9B17A),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Boost",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffEB7878),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Delete",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
