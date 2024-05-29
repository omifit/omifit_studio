import 'package:cached_network_image/cached_network_image.dart';
import 'package:omifit/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

class BannerImg extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final BoxFit fit;
  final BorderRadiusGeometry? borderRadius;
  const BannerImg({
    super.key,
    required this.url,
    required this.height,
    required this.width,
    required this.fit,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(0),
        ),
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        height: height,
        width: width,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: darkBlack.withOpacity(0.2),
          highlightColor: kWhite.withOpacity(0.4),
          child: Container(
            height: height,
            width: width,
            color: darkBlack.withOpacity(0.2),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
