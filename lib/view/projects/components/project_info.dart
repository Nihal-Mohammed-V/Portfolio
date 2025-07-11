import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_detail.dart';
import 'package:get/get.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';
import 'image_viewer.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => controller.onHover(index, value),
      onTap: () => ImageViewer(context, projectList[index].image),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 200, // Set a minimum height
          maxHeight: double.infinity, // Allow expansion
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        child: ProjectDetail(index: index),
      ),
    );
  }
}
