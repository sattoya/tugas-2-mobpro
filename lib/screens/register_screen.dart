import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmpro/theme.dart';
import 'package:tugasmpro/screens/lanjutan_screen.dart';
import 'package:tugasmpro/widgets/logo_vokasi.dart';
import 'package:tugasmpro/widgets/signup_form.dart';

class RegisterScreen extends StatelessWidget {
 const RegisterScreen({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: LogoVokasi(),
              ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Daftar Akun',
                style: titleText,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 20,
            ),
          
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanjutanScreen()),
                    );
              },
              child: const Text('Lanjut'),
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
          ],
        ),
      ),
    );
  }
}
