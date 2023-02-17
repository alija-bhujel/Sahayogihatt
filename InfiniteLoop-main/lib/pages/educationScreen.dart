import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahayogi_hatt/pages/paymentScreen.dart';
import 'package:sahayogi_hatt/pages/paymerchants.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Text(
          "Education",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff2791F2)),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        actions: [
          Image.asset(
            "assets/images/logo.png",
            width: 100,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
      body: SafeArea(
          child: Expanded(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/reading.jpg",
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              color: const Color(0xff2791F2),
              child: Text(
                "Help Children To Get Better Education",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Donation Raisers",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 25),
            raiserBuilder(context),
            const SizedBox(height: 25),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "+120 people donated",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "If you have contribute to make,\nclick below to post your donations,",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const PayMerchantScreen()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff2791F2),
                    ),
                    child: Text(
                      "Post a donation",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ))),
    );
  }

  Widget raiserBuilder(BuildContext context) {
    ScrollController listviewController = ScrollController();
    List<Map<String, dynamic>> data = [
      {
        'title': "Baglung Pustakalaya",
        'description':
            '200 books are needed, and handed Nobels and other course are also accepted.',
        'image': 'assets/images/library.jpg',
        'count': '100',
        'total': '200',
        'color': Colors.green,
        'detail':
            'This library was established for the purpose of providing reading environment for everyone. But due to lack of sufficent budget, only few number of books are available....'
      },
      {
        'title': "Shreekrishna Balshram",
        'description': '20 bags are needed for balshram.',
        'image': 'assets/images/library.jpg',
        'count': '5',
        'total': '20',
        'color': Colors.blue,
        'detail':
            'This balshram was established for the purpose of providing reading environment for every children. But due to lack of sufficent budget, only few number of books are available....'
      },
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.48,
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
                    width: MediaQuery.of(context).size.width * 0.42,
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
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Slider(
                            value: double.parse(value['count']),
                            thumbColor: value['color'],
                            activeColor: value['color'],
                            max: double.parse(value['total']),
                            onChanged: (v) {}),
                        Text(
                          '${value['count']} of ${value['total']}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        PaymentScreen(value)));
                          },
                          child: Container(
                            height: 33,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: const Color(0xff2791F2),
                            ),
                            child: Text(
                              "Donate Now",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
}
