import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hussnain_potfolio/utils/globals.dart';

import '../../../models/carousel_item_model.dart';
import '../../../utils/constants.dart';
import 'animated_image.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "SOFTWARE DEVELOPER",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "Hussnain Ali\nKaghzi",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Software Engineer/ Flutter Developer",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Got a product idea?",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {
                  Globals.openUrl(
                      "https://www.linkedin.com/in/hussnain-ali-kaghzi/");
                },
                child: const Text(
                  "LET'S CONNECT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: const AnimatedImage(
      imageUrl: "assets/me_ok.png",
    ),
  ),
);
