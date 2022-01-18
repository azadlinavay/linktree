import 'package:flutter/material.dart';

void main() {
  runApp(const linktree());
}

// ignore: camel_case_types
class linktree extends StatefulWidget {
  const linktree({Key? key}) : super(key: key);

  @override
  _linktreeState createState() => _linktreeState();
}

// ignore: camel_case_types
class _linktreeState extends State<linktree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    margin: const EdgeInsets.only(top: 50),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(100), // Image radius
                        child:
                            Image.asset('images/azad.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black87),
                    width: 200,
                    height: 25,
                    child: const Center(
                        child: Text(
                      "Looking For Job",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(5)),
                    margin: const EdgeInsets.all(4),
                    child: const Text(
                      "Azad Linavay",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(5)),
                    margin: const EdgeInsets.all(4),
                    child: const Text(
                      "Developer",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(5)),
                    margin: const EdgeInsets.all(4),
                    child: const Text(
                      "Iraq - Duhok",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(10),
                  height: 30,
                  child: const Text(
                    "Visit My Links",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "LinkedIn",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "GitHub",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "Website",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "WhatsApp",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "Instagram",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "Facebook",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("images/azad.jpg")),
                      Text(
                        "Viber",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
