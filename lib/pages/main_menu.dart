import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 24,
          ),
          Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img)))),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic-star.png",
                                ))),
                      ),
                      Text("4.9",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ]),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, \nIlham Maulana Ramadhan',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Stay Healty with Out Spesialist Doctor',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color.fromARGB(200, 0, 0, 0),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img-profile.jpg",
                              ))),
                    ),
                  ],
                ),
                doctorCard(
                      "assets/img-doc1.png", 
                      "Dr. Julaekha", 
                      "Spesialis Penyakit Hati"),
               
                doctorCard(
                      "assets/img-doc2.png",
                      "Dr. Siti Maemunah Handoyo",
                      "Spesialis Penyakit Psikologi"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
