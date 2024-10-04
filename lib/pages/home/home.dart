import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../../utils/globals.dart';
import 'components/carousel.dart';
import 'components/cv_section.dart';
import 'components/education_section.dart';
import 'components/experience_section.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/skill_section.dart';

final GlobalKey carouselKey = GlobalKey();
final GlobalKey cvSectionKey = GlobalKey();
final GlobalKey experienceSectionKey = GlobalKey();
final GlobalKey educationSectionKey = GlobalKey();
final GlobalKey skillSectionKey = GlobalKey();
final GlobalKey sneakPeakKey = GlobalKey();

void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            headerItems[index].onTap();
                          },
                          child: Text(
                            headerItems[index].title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Container(key: carouselKey, child: Carousel()),
            const Divider(color: kCaptionColor),
            const SizedBox(height: 50.0),
            Container(key: cvSectionKey, child: const CvSection()),

            const Divider(color: kCaptionColor),
            const SizedBox(height: 50.0),
            Container(
                key: experienceSectionKey, child: const ExperienceSection()),
            const SizedBox(height: 50.0),
            const Divider(color: kCaptionColor),
            const SizedBox(height: 50.0),
            Container(
                key: educationSectionKey, child: const EducationSection()),
            const SizedBox(height: 50.0),
            const Divider(color: kCaptionColor),
            const SizedBox(height: 50.0),
            Container(key: skillSectionKey, child: const SkillSection()),

            const SizedBox(
              height: 50.0,
            ),
            const Divider(color: kCaptionColor),
            const SizedBox(height: 50.0),
            Container(
              key: sneakPeakKey,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "A SNEAK PEAK TO MY WORK",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 28.0,
                    height: 1.3,
                  ),
                ),
              ),
            ),
            Image.asset("assets/SneakPeak.png"),
            const SizedBox(height: 50.0),
            // TestimonialWidget(),
            const Divider(color: kCaptionColor),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
