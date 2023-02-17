import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahayogi_hatt/model/categoryModel.dart';
import 'package:sahayogi_hatt/pages/educationScreen.dart';
import 'package:sahayogi_hatt/widgets/DonationRaiser.dart';
import 'package:sahayogi_hatt/widgets/MyDrawerHeader.dart';

class Donor extends StatefulWidget {
  const Donor({super.key});

  @override
  State<Donor> createState() => _DonorState();
}

class _DonorState extends State<Donor> {
  List categoryImage = [
    CategoryModel(imageUrl: "assets/images/open-book.png", title: "Education"),
    CategoryModel(imageUrl: "assets/images/clothing.png", title: "Clothes"),
    CategoryModel(imageUrl: "assets/images/salary.png", title: "Money"),
    CategoryModel(
        imageUrl: "assets/images/more-information.png", title: "Others")
  ];
  var currentPage = DrawerSections.dashboard;
  int currentIndex = 0;
  // ignore: prefer_final_fields
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Donors dashboard',
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
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
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text('Hello! Alija',
                    style: GoogleFonts.poppins(fontSize: 20)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.only(top: 60, left: 10),
                child: const Text('** Help Endlessly Live Generously ** ',
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 10),
                  child: Text('Your Recent Impact',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: Image.asset('assets/images/donor.png'),
                ),
                Text('Emergency Donations',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      const SizedBox(height: 10),
                      DonationRaiser(),
                      // GestureDetector(
                      //   onTap: () {},
                      //     child: Container(
                      //       alignment: Alignment.center,
                      //       //padding: EdgeInsets.all(10),
                      //       height: 40,
                      //       width: 200,
                      //       decoration: BoxDecoration(
                      //           color: Color(0xff2791F2),
                      //           borderRadius: BorderRadius.all(
                      //               Radius.circular(10))),
                      //     )))
                    ])),
                Column(
                  children: [
                    Container(
                      child: Text('Categories',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(
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
                                mainAxisExtent: 200,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  categoryImage[index]
                                                      .imageUrl),
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
              ],
            ),
          ],
        ),

        // container to play youtube video
      ])),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          const Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          const Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 12 : 10,
      width: isSelected ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    ),
  );
}
