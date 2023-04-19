import 'package:flutter/material.dart';
import 'package:tugasmpro/theme.dart';

class LanjutanForm extends StatefulWidget {
  @override
  _LanjutanFormState createState() => _LanjutanFormState();
}

class _LanjutanFormState extends State<LanjutanForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Nama', false),
        buildInputForm('Nama Panggilan', false),
        buildInputForm('NPM', false),
        buildInputForm('Program Studi', false),
        buildInputForm('Alamat Rumah', false),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: kTextFieldColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(229, 239, 130, 14))),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? Icon(
                            Icons.visibility_off,
                            color: Color.fromARGB(255, 239, 4, 59),
                          )
                        : Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ))
                : null,
          ),
        ));
  }
}
