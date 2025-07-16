import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_link.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔼 Display image at the top
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            projectList[index].image, 
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(
            height: defaultPadding / 2), // spacing between image and title

        // 🔽 Project title
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),

        Responsive.isMobile(context)
            ? const SizedBox(height: defaultPadding / 2)
            : const SizedBox(height: defaultPadding),

        // 🔽 Project description
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                projectList[index].description,
                style: const TextStyle(color: Colors.grey, height: 1.5),
              ),
            ),
          ),
        ),

        // 🔽 Project links
        ProjectLinks(index: index),
      ],
    );
  }
}
