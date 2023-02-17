// import 'package:flutter/material.dart';

// class DonationAvailable extends StatelessWidget {
//   const DonationAvailable({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Color(0xff2791F2),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Align(
//             alignment: Alignment.center,
//             child: Text(
//               "Donations Available",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 10),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Padding(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//                 DonationCard("images/blanket.jpg", "10 Blankets", "Kathmandu"),
//                 SizedBox(width: 10),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// Widget DonationCard(String imageUrl, String title, String Address) {
//   return GestureDetector(
//     onTap: () {},
//     child: Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 212, 210, 210),
//         borderRadius: BorderRadius.all(
//           Radius.circular(12),
//         ),
//       ),
//       child: SizedBox(
//         height: 200,
//         width: 150,
//         child: Padding(
//           padding: EdgeInsets.all(5),
//           child: Column(
//             children: [
//               Container(
//                 height: 95,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(imageUrl), fit: BoxFit.fill),
//                 ),
//               ),
//               SizedBox(height: 3),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(title,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       )),
//                   SizedBox(height: 2),
//                   Text("Available at",
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                       )),
//                   Text(
//                     Address,
//                     style: const TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }