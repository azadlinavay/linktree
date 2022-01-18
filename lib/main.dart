import 'package:flutter/material.dart';

void main() {
  runApp(const linktree());
}

class linktree extends StatefulWidget {
  const linktree({Key? key}) : super(key: key);

  @override
  _linktreeState createState() => _linktreeState();
}

class _linktreeState extends State<linktree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                    ),
                    margin: EdgeInsets.only(top: 15),
                    child: ClipRRect(
  borderRadius: BorderRadius.circular(20), // Image border
  child: SizedBox.fromSize(
    size: Size.fromRadius(100), // Image radius
    child: Image.network('images/azad.jpg', fit: BoxFit.cover),
  ),
  
),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black26
                    ),
                    width: 200,
                    height: 25,
                    child: Center(child: Text("Looking For Job")),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(5)
              ),
              margin: EdgeInsets.all(4),
              child: Text(
                "Name: Azad Linavay",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
               padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(5)
              ),
              margin: EdgeInsets.all(4),
              child: Text(
                "Job: Web Developer And Programmer",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
               padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(5)
              ),
              margin: EdgeInsets.all(4),
              child: Text(
                "Location: Iraq - Duhok",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),


            Column(
              children: [
                
              ],
              
            ),
          ],
        ),
      ),
    );
  }
}
