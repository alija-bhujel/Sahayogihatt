import 'package:flutter/material.dart';
import 'package:sahayogi_hatt/pages/raiser.dart';

class RaiserPhase1 extends StatelessWidget {
  const RaiserPhase1({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.grey[200],
        content: Container(
            height: 550,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name Of Organization',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Location',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Donation Type',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Target',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'For whom you are raising?',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your Story',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Attach the link of your video',
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Phase2()));
                        },
                        color: Color(0xff2791F2),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}

class Phase2 extends StatelessWidget {
  const Phase2({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.grey[200],
        content: Container(
            height: 450,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name Of Organization',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Location',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Donation Type',
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Raiser()));
                        },
                        color: Color(0xff2791F2),
                        child: Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
