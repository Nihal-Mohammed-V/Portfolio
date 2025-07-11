import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Summary
              Text(
                'Summary',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                'I’m a Flutter developer with a strong passion for crafting clean, responsive, and user-friendly applications. I specialize in building cross-platform apps using Dart and Flutter, with solid experience integrating Firebase, REST APIs, and MySQL. '
                'I focus on performance, intuitive UI/UX, and scalable architecture, following best practices to ensure maintainable and efficient code. With a constant drive to learn and improve, I enjoy turning ideas into polished digital experiences that solve real-world problems.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),

              // Education
              Text(
                'Education',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              CollegeCard(),
              SizedBox(height: 24),

              // Skills
              Text(
                'Skills',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  SkillChip(label: 'Flutter'),
                  SkillChip(label: 'Dart'),
                  SkillChip(label: 'Firebase'),
                  SkillChip(label: 'Hive'),
                  SkillChip(label: 'SQLite'),
                  SkillChip(label: 'REST API'),
                  SkillChip(label: 'Provider'),
                  SkillChip(label: 'Bloc'),
                  SkillChip(label: 'GetX'),
                  SkillChip(label: 'Self Learning'),
                  SkillChip(label: 'Team Collaboration'),
                  SkillChip(label: 'Adaptability'),
                  SkillChip(label: 'Problem Solving'),
                  SkillChip(label: 'Git'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.blue.shade900],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            offset: Offset(0, -1),
            blurRadius: defaultPadding / 4,
          ),
          BoxShadow(
            color: Colors.red,
            offset: Offset(0, 1),
            blurRadius: defaultPadding / 4,
          ),
        ],
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
      ),
    );
  }
}

class CollegeCard extends StatelessWidget {
  const CollegeCard({super.key});

  void _launchCollegeURL() async {
    final url = Uri.parse('https://www.nasracollege.com');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchCollegeURL,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Colors.pink.withOpacity(0.1),
              Colors.blue..shade900.withOpacity(0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(color: Colors.pink.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            // Circular college logo
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/uoc.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 16),

            // College Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nasra College of Arts And Science',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.95),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Bachelor's in Computer Applications (BCA)",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),

            // Duration & Arrow
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.open_in_new,
                    size: 16, color: Colors.tealAccent),
                const SizedBox(height: 4),
                Text(
                  '2022 - 2025',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
