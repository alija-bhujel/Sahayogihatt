import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          const Text(
            "Alija Bhujel",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Text(
            "alijabhujel111@gmail.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
