import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButterCupTileCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int quantity;
  const ButterCupTileCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              // 'assets/images/Image1.png',
              width: 124,
              height: 124,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  // 'Hellebore',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  price,
                  // '\$0.89/lb',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 40),
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
                        quantity.toString(),
                        // '1',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
