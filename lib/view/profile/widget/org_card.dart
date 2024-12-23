import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/widget/imageicon/profile_img.dart';

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
    return BouncingWidget(
      scaleFactor: 0.8,
      duration: const Duration(milliseconds: 100),
      onPressed: onPressed,
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
        child: Align(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            leading: ProfileImg(url: url),
            title: Text(
              tittle,
            ),
            trailing: Text(
              role.toUpperCase(),
              style: const TextStyle(
                color: primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
    // return InkWell(
    //   onTap: onPressed,
    //   child: DecoratedBox(
    //     decoration: BoxDecoration(
    //       color: darkBlack,
    //       borderRadius: BorderRadius.circular(12),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.black.withOpacity(0.2),
    //           spreadRadius: 1,
    //           blurRadius: 60,
    //           offset: const Offset(0, 5),
    //         ),
    //       ],
    //     ),
    //     child: Column(
    //       children: [
    //         BannerImg(
    //           url: url,
    //           height: width > 730
    //               ? 160
    //               : width > 600
    //                   ? 120
    //                   : width > 449
    //                       ? 100
    //                       : 160,
    //           width: double.infinity,
    //           fit: BoxFit.fitWidth,
    //           borderRadius: const BorderRadius.only(
    //             topLeft: Radius.circular(12),
    //             topRight: Radius.circular(12),
    //           ),
    //         ),
    //         gapH8,
    //         PaddedColumn(
    //             padding: const EdgeInsets.symmetric(horizontal: 16),
    //             children: [
    //               Text(
    //                 tittle,
    //                 style: const TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 16,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //                 textAlign: TextAlign.center,
    //               ),
    //               gapH6,
    //               Text(
    //                 subTittle,
    //                 style: const TextStyle(
    //                   color: Color(0xFFA8A8A8),
    //                   fontSize: 12,
    //                 ),
    //               ),
    //               gapH12,
    //               OutlinedBtn(text: role, onPressed: () {}),
    //               gapH18,
    //             ]),
    //       ],
    //     ),
    //   ),
    // );
  }
}
