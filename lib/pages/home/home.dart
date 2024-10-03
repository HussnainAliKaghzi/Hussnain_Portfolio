import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
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
                        title: Text(
                          headerItems[index].title,
                          style: const TextStyle(
                            color: Colors.white,
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Header(),
              ),
              Carousel(),
              const Divider(color: kCaptionColor),
              const SizedBox(height: 50.0),
              // Divider(color: kCaptionColor),
              const CvSection(),
              // IosAppAd(),
              // SizedBox(
              //   height: 70.0,
              // ),
              // WebsiteAd(),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 28.0),
              //   child: PortfolioStats(),
              // ),
              // SizedBox(height: 25.0),
              const Divider(color: kCaptionColor),
              const SizedBox(height: 50.0),
              const ExperienceSection(),
              const SizedBox(height: 50.0),
              const Divider(color: kCaptionColor),
              const SizedBox(height: 50.0),
              const EducationSection(),
              const SizedBox(height: 50.0),
              const Divider(color: kCaptionColor),
              const SizedBox(height: 50.0),
              const SkillSection(),
              // SizedBox(
              //   height: 50.0,
              // ),
              // Sponsors(),
              const SizedBox(
                height: 50.0,
              ),
              const Divider(color: kCaptionColor),
              const SizedBox(height: 50.0),
              Align(
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
              Image.asset("assets/SneakPeak.png"),
              const SizedBox(height: 50.0),
              // TestimonialWidget(),
              const Divider(color: kCaptionColor),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
