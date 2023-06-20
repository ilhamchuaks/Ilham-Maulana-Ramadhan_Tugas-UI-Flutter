import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/main_menu.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/img-started.png",
                  ))),
        ),
        Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(0, 0, 50, 100).withOpacity(0.9),
                const Color.fromARGB(0, 0, 50, 100).withOpacity(0.0)
              ],
            ))),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Treat Patient Like A Queen",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFFFFFF),
                      fontSize: 24,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                    "Explore the best our services with\n professional specialist doctor",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffFFFFFF),
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center),
              ),
              const Spacer(),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuPage()),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(150, 0, 0, 0),
                          borderRadius: BorderRadius.circular(17)),
                      child: Text("Get Started",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffFFFFFF),
                            fontSize: 18,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
