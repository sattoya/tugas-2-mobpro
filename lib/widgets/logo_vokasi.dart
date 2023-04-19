import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoVokasi extends StatelessWidget {
  const LogoVokasi({Key? key, this.isColored = false}) : super(key: key);

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(isColored
            ? 'assets/logo_sekolah.png'
            : 'assets/logo_sekolah.png'),
        const SizedBox(height: 25.54),
        Text(
          'Yamada School',
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isColored ? Color.fromARGB(255, 20, 19, 20) : Colors.white,
          ),
        ),
        Text(
          'Stylish, character, & Smart',
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: isColored ? Color.fromARGB(255, 20, 19, 20) : Colors.white,
          ),
        ),
      ],
    );
  }
}