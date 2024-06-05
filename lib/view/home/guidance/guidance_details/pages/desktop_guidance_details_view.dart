import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/banner_image.dart';

class DesktopGuidanceDetailsView extends StatefulWidget {
  const DesktopGuidanceDetailsView({super.key});

  @override
  State<DesktopGuidanceDetailsView> createState() => _DesktopGuidanceDetailsViewState();
}

class _DesktopGuidanceDetailsViewState extends State<DesktopGuidanceDetailsView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Bench press Details"),
      ),
      body :  SingleChildScrollView(
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
           gapH20,
            Row(
              children: [
                Container(
                  width: 400,
                  decoration: const BoxDecoration(
                   color:  darkBlack,
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                  ),
                  child:  PaddedColumn(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    padding:  const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      gapH20,
                      BannerImg(url: "https://i.imgur.com/MknSctK.png", height: 200, width: double.infinity, fit: BoxFit.cover, borderRadius: BorderRadius.circular(20)),
                      gapH15,
                      const Text("Bench Press Machine", style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.w800)),
                      gapH10, 
                      const Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful", style: TextStyle(color: kGrey, fontSize: 14, fontWeight: FontWeight.w400)),
                      gapH20, 
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                        onPressed: (){}, 
                        child: const Text("Start Exercise", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),),
                      ),  
                      gapH20,                  
                    ]),
                ),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}