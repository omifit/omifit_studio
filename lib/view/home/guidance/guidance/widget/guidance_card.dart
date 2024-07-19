import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/banner_image.dart';

class GuidanceCard extends StatelessWidget {
  final String url;
  final String tittle;
  final String subTittle;
  final Function() onPressed;
  final String role;
  const GuidanceCard({
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
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.circular(18),
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
                  ? 140
                  : width > 600
                      ? 120
                      : width > 449
                          ? 100
                          : 160,
              width: double.infinity,
              fit: BoxFit.fill,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              title: Text(
                tittle,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight:
                      Responsive.isMobile(context) ? FontWeight.w700 : null,
                  fontSize: Responsive.isTablet(context) ||
                          Responsive.isMobile(context)
                      ? 14
                      : 16,
                ),
              ),
              subtitle: Text(
                subTittle,
                style: const TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 12,
                ),
              ),
              trailing: const CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromRGBO(235, 150, 31, 0.21),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: primaryColor,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
