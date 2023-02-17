import 'package:flutter/material.dart';

class DonationRaiser extends StatelessWidget {
  DonationRaiser({super.key});
  List emergencyDonerImage = [
    "assets/images/emergency1.png",
    "assets/images/emergency2.png",
    "assets/images/emergency1.png",
    "assets/images/emergency1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: emergencyDonerImage.length,
          itemBuilder: (context, index) {
            return RaiserCard(emergencyDonerImage[index]);
          }),
    );
  }
}

Widget RaiserCard(String imageUrl) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
          color: const Color.fromARGB(255, 212, 210, 210),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    ),
  );
}
