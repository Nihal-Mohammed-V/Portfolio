import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 500, this.width = 350})
      : super(key: key);
  final double? width;
  final double? height;

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;

        // Apply up-down floating animation to just the model
        return Transform.translate(
          offset: Offset(0, 6 * value),
          child: SizedBox(
            height: Responsive.isLargeMobile(context)
                ? MediaQuery.sizeOf(context).width * 0.7
                : Responsive.isTablet(context)
                    ? MediaQuery.sizeOf(context).width * 0.5
                    : 850,
            width: Responsive.isLargeMobile(context)
                ? MediaQuery.sizeOf(context).width * 0.6
                : Responsive.isTablet(context)
                    ? MediaQuery.sizeOf(context).width * 0.4
                    : 850,
            child: const ModelViewer(
              src: 'assets/images/pc.glb',
              alt: "assets/images/image.png",
              ar: true,
              autoRotate: true,
              cameraControls: true,
              backgroundColor: Colors.transparent,
              arModes: ['scene-viewer', 'webxr', 'quick-look'],
            ),
          ),
        );
      },
    );
  }
}
