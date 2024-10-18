import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar(BuildContext context, Function onClicked) {
  return AppBar(
    backgroundColor: Colors.white.withOpacity(0.0),
    scrolledUnderElevation: 0,
    elevation: 0,
    title: const Text('Buttercup'),
    titleTextStyle: GoogleFonts.anton(
      fontSize: 22,
      color: Colors.black,
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const ImageIcon(
        AssetImage(
          'assets/icons/Hamburger_logo.png',
        ),
        size: 20,
        color: Colors.black,
      ),
      onPressed: () {
        log(
          'Icon Button Pressed',
          name: 'Hamburger icon',
        );
      },
    ),
    actions: [
      IconButton(
        icon: const ImageIcon(
          AssetImage(
            'assets/icons/Basket_logo.png',
          ),
          size: 20,
          color: Colors.black,
        ),
        onPressed: () {
          onClicked();
          log('Icon Button Pressed', name: 'Basket icon');
        },
      ),
    ],
  );
}
