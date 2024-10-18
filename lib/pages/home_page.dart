import 'package:designa_app/pages/item_card_page.dart';
import 'package:designa_app/widgets/custom_app_bar.dart';
import 'package:designa_app/widgets/homescreen/list_tile_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductPage(),
          ),
        );
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My Cart',
                style: GoogleFonts.anton(
                  color: Colors.black,
                  fontSize: 48,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: const [
                ButterCupTileCard(
                  imageUrl: 'assets/images/Image1.png',
                  title: 'Hellebore',
                  price: '\$0.89/lb',
                  quantity: 2,
                ),
                ButterCupTileCard(
                  imageUrl: 'assets/images/Image2.png',
                  title: 'Daisy',
                  price: '\$8.99/lb',
                  quantity: 1,
                ),
                ButterCupTileCard(
                  imageUrl: 'assets/images/Image3.png',
                  title: 'Tulip',
                  price: '\$1.99/ea',
                  quantity: 1,
                ),
                ButterCupTileCard(
                  imageUrl: 'assets/images/Image1.png',
                  title: 'Hellebore',
                  price: '\$0.89/lb',
                  quantity: 2,
                ),
                ButterCupTileCard(
                  imageUrl: 'assets/images/Image2.png',
                  title: 'Daisy',
                  price: '\$8.99/lb',
                  quantity: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            // color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Divider(
                  height: 1,
                  color: Colors.black,
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SubTotal',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$ 29.76',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(
                    12,
                    0,
                    12,
                    24,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff7201A8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Schedule a pick-up',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: -1,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/Calendar_logo.png',
                        height: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
