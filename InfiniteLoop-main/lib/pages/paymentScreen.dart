import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahayogi_hatt/pages/paymerchants.dart';

class PaymentScreen extends StatefulWidget {
  Map<String, dynamic> data;
  PaymentScreen(this.data);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
            Image.asset(widget.data['image']),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                widget.data['title'],
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                widget.data['detail'],
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'see more',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Slider(
                value: double.parse(widget.data['count']),
                thumbColor: widget.data['color'],
                activeColor: widget.data['color'],
                max: double.parse(widget.data['total']),
                onChanged: (v) {}),
            Text(
              '${widget.data['count']} of ${widget.data['total']}',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'View History',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const PayMerchantScreen()));
              },
              child: Container(
                height: 33,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xff2791F2),
                ),
                child: Text(
                  "Donate Now",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
