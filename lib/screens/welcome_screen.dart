import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmpro/screens/login_screen.dart';
import 'package:tugasmpro/screens/register_screen.dart';
import 'package:tugasmpro/widgets/logo_vokasi.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan Spacer di sini
            const Spacer(),
            const LogoVokasi(isColored: true),
            // gunakan Spacer
            const Spacer(),
            // Tambah tombol Login dan Register
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()),
                    );
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 7, 4, 51),
                onPrimary: Color.fromARGB(255, 255, 255, 255),
                minimumSize: const Size(240.0, 40.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 15.0),
                side: const BorderSide(color: Color.fromARGB(255, 26, 22, 3)),
              ),
            ),
            const SizedBox(height: 10.0),
            // Tombol Register
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()),
                    );
              },
              child: const Text('Register'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 7, 4, 51),
                onPrimary: Color.fromARGB(255, 255, 255, 255),
                minimumSize: const Size(240.0, 40.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 15.0),
                side: const BorderSide(color: Color.fromARGB(255, 26, 22, 3)),
              ),
            ),
            const SizedBox(height: 10.0),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}