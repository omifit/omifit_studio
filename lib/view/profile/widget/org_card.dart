import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/banner_image.dart';

class OrgCard extends StatelessWidget {
  final String url;
  final String tittle;
  final String subTittle;
  final Function() onPressed;
  final String role;
  const OrgCard({
    super.key,
    required this.url,
    required this.tittle,
    required this.subTittle,
    required this.onPressed,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 60,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            BannerImg(
              url: url,
              height: width > 730
                  ? 160
                  : width > 600
                      ? 120
                      : width > 449
                          ? 100
                          : 160,
              width: double.infinity,
              fit: BoxFit.fill,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            gapH8,
            Text(
              tittle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH6,
            Text(
              subTittle,
              style: const TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 12,
              ),
            ),
            gapH12,
            OutlinedBtn(text: role, onPressed: () {}),
            gapH18,
          ],
        ),
      ),
    );
  }
}
