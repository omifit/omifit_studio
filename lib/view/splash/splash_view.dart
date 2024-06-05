import 'package:avatar_glow/avatar_glow.dart';
import 'package:omifit/utils/utils.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      context.pushReplacementNamed(AppRoute.signin.name);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:  double.infinity,
        height: double.infinity,
        decoration:  const BoxDecoration(
          gradient: RadialGradient(
            colors: [lightBlack, darkBlack]
          ),
        ),
        child: Center(
          child: AvatarGlow(
            glowColor: kGrey,
            child: const Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: lightBlack,
                backgroundImage: AssetImage('assets/icons/logo.png'),
                radius: 80.0,
              ),
            ),
          ),
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     const SizedBox(
          //       height: 160,
          //       width: 160,
          //       child: CircularProgressIndicator(
          //         color: secondaryColor,
          //       ),
          //     ),
          //     Image(
          //       image: const AssetImage('assets/icons/logo.png'),
          //       height: ResponsiveDashboard.isMobile(context) ? 110 : 140,
          //       fit: BoxFit.contain,
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
