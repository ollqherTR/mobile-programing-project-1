import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'NewNote.dart';
import 'homepage.dart';

class EDIT extends StatefulWidget {
  const EDIT({Key? key}) : super(key: key);

  @override
  State<EDIT> createState() => _EDITState();
}

bool isWhite = false;

class _EDITState extends State<EDIT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Edit Note",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (contex) {
                      return Expanded(
                          child: Container(
                            color: isWhite ? Colors.white : Colors.cyanAccent,
                        height: 300,
                            width: double.infinity,
                        child: Container(
                          width: double.infinity,
                          color: isWhite ? Colors.white : Colors.cyanAccent,
                          margin: const EdgeInsets.only(left: 50),
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      Share.share("hello world");
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(const CircleBorder()),
                                    ),
                                    child: const Icon(
                                      Icons.share,
                                      size: 30,
                                      color: Colors.white38,
                                    ),
                                  ),
                                  const Text(
                                    "Share with your friends",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(const CircleBorder()),
                                    ),
                                    child: const Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Colors.white38,
                                    ),
                                  ),
                                  const Text(
                                    "Delete",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(const CircleBorder()),
                                    ),
                                    child: const Icon(
                                      Icons.copy,
                                      size: 30,
                                      color: Colors.white38,
                                    ),
                                  ),
                                  const Text(
                                    "Duplicate",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.yellow,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.pink,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.limeAccent,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.cyan[200],
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.purpleAccent,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isWhite = !isWhite;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    child: const Icon(Icons.check),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ));
                    });
              },
              icon: const Icon(Icons.more_vert)),
          IconButton(
              onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HOMEPAGE()));
              },
              icon: const Icon(Icons.check)),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Meeting with clients",
              style: TextStyle(color: Colors.blue[600], fontSize: 25),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Meeting Meeting Meeting Meeting Meeting Meeting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "Meeting Meeting Meeting Meeting Meeting Meeting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "Meeting Meeting Meeting Meeting Meeting Meeting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "Meeting Meeting Meeting Meeting Meeting Meeting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "Meeting Meeting Meeting Meeting Meeting Meeting",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "Meeting Meeting ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
