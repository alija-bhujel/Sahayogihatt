import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget raiserBuilder(
  BuildContext context,
) {
  List<Map<String, dynamic>> data = [
    {
      'title': "Cancer Patient",
      'description':
          'He is Suffering from cancer and belongs t very financial background...',
      'image': 'assets/images/cancer.jpg',
      'count': '19000',
      'total': '20000',
      'color': Colors.green,
    },
    {
      'title': "Earthquake Victim",
      'description':
          'It is raised by Red Cross Nepal to help the earthquake victim of Gorkha.',
      'image': 'assets/images/cancer.jpg',
      'count': '10000',
      'total': '200000',
      'color': Colors.blue,
    },
    {
      'title': "Mahabir Pun",
      'description':
          'Till this date, he has donated 5 lakh, 200 piece of clothes for needy...',
      'image': 'assets/images/pun.jpg',
      'count': '500000',
      'total': '800000',
      'color': Colors.green,
    },
    {
      'title': "Earthquake Victim",
      'description':
          'It is raised by Red Cross Nepal to help the earthquake victim of Gorkha.',
      'image': 'assets/images/cancer.jpg',
      'count': '10000',
      'total': '200000',
      'color': Colors.blue,
    },
  ];
  ScrollController listviewController = ScrollController();

  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.5,
    child: Row(
      children: [
        Expanded(
          child: ListView(
            controller: listviewController,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: data.map((value) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: const Color.fromARGB(255, 212, 210, 210),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        value['image'],
                        height: 60,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        value['title'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        value['description'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Slider(
                          value: double.parse(value['count']),
                          thumbColor: value['color'],
                          activeColor: value['color'],
                          max: double.parse(value['total']),
                          onChanged: (v) {}),
                      Text(
                        'RS. ${value['count']} of ${value['total']}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        InkWell(
          onTap: () {
            listviewController.jumpTo(listviewController.offset + 210);
          },
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ),
        )
      ],
    ),
  );
}
