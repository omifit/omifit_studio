import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';

class ImgIconWidget extends StatelessWidget {
  final String path;
  final double size;
  final Color color;
  const ImgIconWidget({
    super.key,
    required this.path,
    required this.size,
    this.color = kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(path),
      size: size,
      color: color,
    );
  }
}
