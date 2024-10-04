import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/education.dart';
import '../../../utils/constants.dart';
import '../../../utils/globals.dart';
import '../../../utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
      description:
          "1. Develop highly scalable and production applications.\n\n2. Overseeing the entire lifecycle of products and projects, starting from development through to deployment. This involves coordinating tasks, resources, and timelines to ensure efficient progress and successful delivery. \n\n3. Identifying and addressing any issues or bugs that arise during development or testing phases. This includes debugging and implementing solutions to ensure the product meets quality standards and user expectations.",
      linkName: "https://www.digitechinfra.com",
      company: "DIGITECH INFRA ASSOCIATES",
      period: "JULY 2024 - PRESENT",
      designation: "FLUTTER DEVELOPER"),
  Education(
    description:
        "At Fixfirst, I contributed to two key projects: \n\n1. FixFirst: \n Focused on optimizing service processes for technicians. I implemented features for order management, estimation, report generation, and invoicing. Additionally, I integrated push notification functionality and localization, enhancing the app's usability and accessibility for users across different regions.\n\n2. Fix1: \n Empowered users to order spare parts or request services like repairs. This project broadened my experience in user interface design and frontend development, as well as backend integration to facilitate seamless service delivery.",
    linkName: "https://www.fixfirst.io/",
    company: "FIX FIRST",
    period: "OCTOBER 2022 - JUNE 2024",
    designation: "FLUTTER DEVELOPER",
  ),
  Education(
    description:
        "1. During my job at Fun Prime, I contributed to the CV Maker project as a Flutter Developer. Within a dynamic team, I crafted user-friendly interfaces and implemented functionalities, integrating Firebase for seamless data storage and retrieval. \n\n2. This experience provided invaluable insights into application architecture and teamwork, fostering my growth as a developer. Grateful for the mentorship received, I'm eager to apply these skills in my future endeavors.",
    linkName: "https://funprimetechnology.com/",
    company: "FUNPRIME TECHNOLOGY",
    period: "MARCH 2022 - AUGUST 2022",
    designation: "FLUTTER DEVELOPER",
  ),
  Education(
      description:
          "During my internship as a Flutter Developer, I immersed myself in the dynamic world of mobile application development. Collaborating closely with senior developers and designers, I gained hands-on experience in crafting intuitive and visually appealing cross-platform applications. Throughout the internship, I honed my skills in Dart programming language, Flutter framework, and application architecture principles, while also developing effective communication and adaptability within a multidisciplinary team. Grateful for the mentorship and real-world exposure, I'm eager to leverage these experiences as I continue to grow in my journey as a Flutter Developer.",
      linkName: "https://ffc.com.pk/",
      company: "FAUJI FERTILIZER COMPANY LIMITED",
      period: "NOVEMBER 2021 - DECEMBER 2021",
      designation: "INTERNSHIP"),
];

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "PROFESSIONAL EXPERIENCE",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 400.0),
                  child: const Text(
                    "A flutter developer while 3+ years of experience. A Proactive, tech enthusiast who is highly skilled towards product development and furious towards projects delivery",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: educationList
                      .map(
                        (education) => SizedBox(
                          width: constraints.maxWidth / 2.0 - 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                education.designation,
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
                                education.company,
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
                                education.period,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.description,
                                // overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
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
                                    Globals.openUrl(education.linkName);
                                  },
                                  child: Text(
                                    education.linkName,
                                    style: const TextStyle(
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
                        ),
                      )
                      .toList(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
