import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayMerchantScreen extends StatelessWidget {
  const PayMerchantScreen({super.key});

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
          "Payments",
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
          child: Column(
        children: [
          Text(
            "Online Payments through",
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 75,
                    width: 190,
                    color: const Color.fromARGB(255, 212, 210, 210),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      color: Colors.white,
                      child: Image.asset("assets/images/esewa.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 75,
                    width: 190,
                    color: const Color.fromARGB(255, 212, 210, 210),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      color: Colors.white,
                      child: Image.asset("assets/images/khalti.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 75,
              width: 190,
              color: const Color.fromARGB(255, 212, 210, 210),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white,
                child: Image.asset("assets/images/fonepay.png"),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
