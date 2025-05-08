import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { local, network, svg }

class AppImage extends StatelessWidget {
  final String data;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageType type;
  final String? package;

  const AppImage(
    this.data, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit,
    this.package,
    this.alignment = Alignment.center,
    this.type = ImageType.local,
  });

  const AppImage.local(
    this.data, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit,
    this.package,
    this.alignment = Alignment.center,
    this.type = ImageType.local,
  });

  const AppImage.network(
    this.data, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit,
    this.package,
    this.alignment = Alignment.center,
    this.type = ImageType.network,
  });

  const AppImage.svg(
    this.data, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit,
    this.package,
    this.alignment = Alignment.center,
    this.type = ImageType.svg,
  });

  @override
  Widget build(BuildContext context) {
    return __loadImage();
  }

  Widget __loadImage() {
    switch (type) {
      case ImageType.local:
        return Image.asset(
          "assets/$data",
          width: width,
          height: height,
          color: color,
          fit: fit,
          alignment: alignment,
          package: package ?? "design_system",
        );
      case ImageType.network:
        return Image.network(
          data,
          width: width,
          height: height,
          color: color,
          fit: fit,
          alignment: alignment,
        );
      case ImageType.svg:
        return SvgPicture.asset(
          "assets/$data",
          width: width
             ,
          height: height,
          fit: fit ?? BoxFit.contain,
          alignment: alignment,
          colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
          package: package ?? "design_system",
        );
    }
  }
}
