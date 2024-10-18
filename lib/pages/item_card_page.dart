import 'dart:developer';

import 'package:designa_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDB3FA),
      appBar: customAppBar(context, () {
        Navigator.of(context).pop();
      }),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Image4.png',
                        width: MediaQuery.of(context).size.width,
                        height: 372,
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 36,
                          width: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                            ),
                            onPressed: () {
                              // Handle favorite action
                            },
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Iris Reticulata',
                      style: GoogleFonts.anton(
                        fontSize: 48,
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          // Handle dropdown action
                        },
                        iconSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Quantity and price section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 58,
                          height: 32,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                          child: Text(
                            // quantity.toString(),
                            '1',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                              height: 1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.remove),
                            iconSize: 14,
                            onPressed: () {
                              log('Icon Button Pressed', name: 'Remove');
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.add),
                            iconSize: 16,
                            onPressed: () {
                              log('Icon Button Pressed', name: 'Add');
                            },
                          ),
                        ),
                      ],
                    ),

                    // Price
                    Text(
                      '\$1.99/ea',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        letterSpacing: -1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  decoration: BoxDecoration(
                    color: const Color(0xff7201A8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add to basket',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: -1,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/Basket_logo2.png',
                        height: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
