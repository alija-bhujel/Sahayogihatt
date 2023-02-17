import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationAvailable extends StatelessWidget {
  const DonationAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
          DonationCard("assets/images/blanket.jpg", "10 Blankets", "Kathmandu"),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

Widget DonationCard(String imageUrl, String title, String Address) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 212, 210, 210),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: SizedBox(
        height: 200,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 95,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 2),
                  Text("Available at",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )),
                  Text(
                    Address,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
