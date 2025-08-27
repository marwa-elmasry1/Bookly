import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for a book ..',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
        ),
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
