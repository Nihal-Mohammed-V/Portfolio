import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Summary
          const Text(
            'Summary',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'I am a Flutter developer with a passion for building beautiful and functional applications. I focus on performance, responsive design, and clean architecture.',
          ),
          const SizedBox(height: 24),

          // Education
          const Text(
            'Education',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 2,
            child: ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Bachelor of Computer Applications'),
              subtitle: const Text('XYZ University • 2021 - 2024'),
            ),
          ),
          const SizedBox(height: 24),

          // Skills
          const Text(
            'Skills',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              SkillChip(label: 'Flutter'),
              SkillChip(label: 'Dart'),
              SkillChip(label: 'Firebase'),
              SkillChip(label: 'MySQL'),
              SkillChip(label: 'REST API'),
              SkillChip(label: 'Provider'),
              SkillChip(label: 'Git'),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.teal.shade100,
    );
  }
}
