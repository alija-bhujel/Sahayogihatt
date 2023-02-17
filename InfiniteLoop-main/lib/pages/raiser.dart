import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahayogi_hatt/pages/educationScreen.dart';
import 'package:sahayogi_hatt/pages/form.dart';
import 'package:sahayogi_hatt/widgets/DonationRaiser.dart';
import 'package:sahayogi_hatt/widgets/MyDrawerHeader.dart';
import 'package:sahayogi_hatt/widgets/MyDrawerlist.dart';

import '../model/categoryModel.dart';

class Raiser extends StatefulWidget {
  const Raiser({super.key});

  @override
  State<Raiser> createState() => _RaiserState();
}

class _RaiserState extends State<Raiser> {
  List categoryImage = [
    CategoryModel(imageUrl: "assets/images/open-book.png", title: "Education"),
    CategoryModel(imageUrl: "assets/images/clothing.png", title: "Clothes"),
    CategoryModel(imageUrl: "assets/images/salary.png", title: "Money"),
    CategoryModel(
        imageUrl: "assets/images/more-information.png", title: "Others")
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Raisers dashboard',
          style: GoogleFonts.poppins(fontSize: 20, color: Color(0xff2791F2)),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: kToolbarHeight,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
      drawer: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                child: Title(
                    color: Colors.black,
                    child: Text(
                      'SAHAYOGI HATT',
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Colors.black),
                    )),
              ),
              Container(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/avatar.jpg'),
                ),
              ),
              const MyDrawerHeader(),
              MyDrawerList(),
            ]),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text('We are with you !!',
              style: GoogleFonts.poppins(fontSize: 20)),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: const Text('** Believe us and feel free to raise a fund ** ',
              style: TextStyle(fontSize: 20)),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Image.asset("assets/images/donor.png")),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Available donations',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      SizedBox(height: 10),
                      DonationRaiser(),
                    ]))),
            Column(
              children: [
                Container(
                  child: Text('Categories',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height * 0.8,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categoryImage.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.0),
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                      const EducationScreen()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              categoryImage[index].imageUrl),
                                          fit: BoxFit.fill)),
                                ),
                                Text(categoryImage[index].title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(500),
                            ),
                            textStyle: TextStyle(
                              fontSize: 12,
                            )),
                        onPressed: () {},
                        child: Center(child: Text('Raiser as an individual'))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(500),
                            ),
                            textStyle: TextStyle(
                              fontSize: 12,
                            )),
                        onPressed: () {},
                        child: Center(child: Text('Raiser as an team'))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(500),
                            ),
                            textStyle: TextStyle(
                              fontSize: 12,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => RaiserPhase1()));
                        },
                        child:
                            Center(child: Text('Raiser as an Organization'))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
          ],
        )
      ])),
    );
  }
}
