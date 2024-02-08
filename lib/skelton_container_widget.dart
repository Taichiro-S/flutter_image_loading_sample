import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeltonContainerWidget extends StatelessWidget {
  const SkeltonContainerWidget({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Container(
              width: width,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
            )));
  }
}
