import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/globals.dart';
import '../../../utils/screen_helper.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ACADEMIC QUALIFICATION",
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 28.0,
                          height: 1.3,
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      // Text(
                      //   "This is all the skills listed below more will be added in due time. This is all the skills listed below more will be added in due time.",
                      //   style: TextStyle(
                      //     color: kCaptionColor,
                      //     height: 1.5,
                      //     fontSize: 16.0,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BACHELORS IN INFORMATION TECHNOLOGY",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "QUAID-E-AZAM UNIVERSITY",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "2017 - 2021",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text(
                            "A Bachelor of Science in Information Technology equipped me with the fundamentals of software development, programming languages, and algorithm design. This degree provided a strong foundation for a career in technology, preparing me to tackle complex problems and build innovative solutions."
                            "\n\nSecured top spot in Final Year Project",
                            maxLines: 14,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Globals.openUrl("https://qau.edu.pk/");
                              },
                              child: const Text(
                                "https://qau.edu.pk/",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 2,
                  child: Image.asset(
                    "assets/graduate.png",
                    width: 300.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
