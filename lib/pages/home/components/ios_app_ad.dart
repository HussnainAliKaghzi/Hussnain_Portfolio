import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class IosAppAd extends StatelessWidget {
  const IosAppAd({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Image.asset(
              "assets/ShanTravelBanner.png",
              width: double.infinity,
              // Set width for image on smaller screen
              // width: constraints.maxWidth > 720.0 ? null : 350.0,
            ),
          );
        },
      ),
    );
  }
}
