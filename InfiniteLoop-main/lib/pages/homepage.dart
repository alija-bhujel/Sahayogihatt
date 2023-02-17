import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahayogi_hatt/pages/login.dart';
import 'package:sahayogi_hatt/widgets/adonations.dart';
import 'package:sahayogi_hatt/widgets/raiserBuilder.dart';
import 'package:sahayogi_hatt/widgets/videoplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 100,
          toolbarHeight: 80,
          leading: Image.asset(
            'assets/images/logo.png',
          ),
          title: Text(
            'Sahayogi Haath',
            style: GoogleFonts.poppins(
                fontSize: 23,
                color: Color(0xff2791F2),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => LoginPage()));
                },
                child: Text(
                  "Sign in",
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Image(
                      image: const AssetImage('assets/images/boy.png'),
                      height: size.height * 0.5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Why Sahayogi Haath?",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: const AssetImage(
                                'assets/images/inspiration.png'),
                            height: 110,
                            width: size.width * 0.5,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image(
                            image: const AssetImage(
                                'assets/images/inspiration.png'),
                            height: 110,
                            width: size.width * 0.5,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image(
                            image: const AssetImage(
                                'assets/images/inspiration.png'),
                            height: 110,
                            width: size.width * 0.5,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    const VideoPlayer(),
                    const SizedBox(height: 30),
                    Text(
                      "Top Donation Raisers",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),
                    raiserBuilder(context),
                    const SizedBox(height: 30),
                    Text(
                      "Need to raise donations",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff2791F2)),
                      child: Text(
                        "Start raising",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      "Don't know how to raise fund?",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Click here",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff2791F2),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Available Donations",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const DonationAvailable(),
                    const SizedBox(height: 35),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
