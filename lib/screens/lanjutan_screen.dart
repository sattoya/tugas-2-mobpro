import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmpro/theme.dart';
import 'package:tugasmpro/screens/profile_screen.dart';
import 'package:tugasmpro/widgets/logo_vokasi.dart';
import 'package:tugasmpro/widgets/lanjutan_form.dart';

class LanjutanScreen extends StatelessWidget {
 const LanjutanScreen({
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
                'Lanjutan Akun',
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
              child: LanjutanForm(),
            ),
            SizedBox(
              height: 20,
            ),
          
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen()),
                    );
              },
              child: const Text('Daftar'),
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
