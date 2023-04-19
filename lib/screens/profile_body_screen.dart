import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vokasiLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      color: const Color(0xff8B8B8B),
    );
    var vkTextGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff484848),
    );
    var vkTextLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: const Color(0x80484848),
    );
    var vkTextCardLight = GoogleFonts.poppins(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
    var vkTextCardBold = GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: Color.fromARGB(255, 7, 4, 51),
            ),
            child: 
            const CircleAvatar(
              backgroundImage: AssetImage('assets/Profil_me.png'),
              radius: 50.0,
              
            ),
          ),
          const Spacer(),
          Text(
            'Satya Wisnu',
            style: GoogleFonts.poppins(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: const Color(0xff484848),
            ),
          ),
          Text(
            '065120136.satya@unpak.ac.id',
            style: vokasiLightGrey,
          ),
          Text(
            '085155148856',
            style: vokasiLightGrey,
          ),
          const Spacer(),
          // Card for brief info
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 4, 51),
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: vkTextCardLight),
                    const Spacer(),
                    Text('065120136', style: vkTextCardBold),
                    const SizedBox(width: 9.0),
                    const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Status Keaktifan', style: vkTextCardLight),
                    const Spacer(),
                    Text('Aktif', style: vkTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Program Studi', style: vkTextCardLight),
                    const Spacer(),
                    Text('Ilmu Komputer', style: vkTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Jenjang Pendidikan', style: vkTextCardLight),
                    const Spacer(),
                    Text('Strata 1', style: vkTextCardBold),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Nama Lengkap', style: vkTextGrey),
                const Spacer(),
                Text('Satya Wisnu Dwi Raharjo', style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 7, 4, 51)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Panggilan', style: vkTextGrey),
                const Spacer(),
                Text('Sattoya', style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 7, 4, 51)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Alamat Rumah', style: vkTextGrey),
                const SizedBox(height: 6.0),
                Text(
                  'Perum acropolis Blok MK.2, karadenan, cibinong, Bogor ',
                  style: vkTextLightGrey,
                ),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 7, 4, 51)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Kartu Mahasiswa', style: vkTextGrey),
                const Spacer(),
                const Icon(Icons.badge),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}