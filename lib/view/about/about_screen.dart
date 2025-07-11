import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/about/components/aboutsection.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'About', title: ' Me'),
          const SizedBox(height: defaultPadding),
          const Expanded(
            child: Responsive(
              desktop: AboutSection(),
              extraLargeScreen: AboutSection(),
              tablet: AboutSection(),
              largeMobile: AboutSection(),
              mobile: AboutSection(),
            ),
          ),
        ],
      ),
    );
  }
}
