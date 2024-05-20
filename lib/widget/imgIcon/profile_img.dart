import 'package:cached_network_image/cached_network_image.dart';
import 'package:omifit/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

class ProfileImg extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;

  const ProfileImg({
    super.key,
    required this.url,
    this.height = 40,
    this.width = 40,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: url,
        height: height,
        width: width,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            Shimmer.fromColors(
          baseColor: darkBlack.withOpacity(0.2),
          highlightColor: kWhite.withOpacity(0.4),
          child: const CircleAvatar(),
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: primaryColor,
        ),
      ),
    );
  }
}
