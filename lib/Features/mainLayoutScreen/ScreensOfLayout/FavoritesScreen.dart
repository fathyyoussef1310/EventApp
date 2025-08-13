import 'package:flutter/material.dart';
import '../../../core/ColorsMang.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/Widgets/CustomeFormField.dart.dart';
class Favoritesscreen extends StatelessWidget {
  const Favoritesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text("Favourites", style: GoogleFonts.inter()),
        backgroundColor: ColorsMang.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Customeformfield(
          selectedicon: Icons.lock,
          label: "Password",
          keyboardinputType: TextInputType.visiblePassword,
          suffixIcon: Icons.visibility_outlined,
        ),
      ),
    );
  }
}
