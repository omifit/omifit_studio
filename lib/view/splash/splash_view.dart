import 'package:avatar_glow/avatar_glow.dart';
import 'package:omifit/services/shared_preference_service.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pwa_update_listener/pwa_update_listener.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      print(SharedPreferenceService.getToken());
      if (SharedPreferenceService.getToken() != null) {
        context.goNamed(AppRoute.profile.name,
            pathParameters: {'isBack': "false"});
      } else {
        context.pushReplacementNamed(AppRoute.signin.name);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PwaUpdateListener(
      onReady: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Expanded(child: Text('A new update is ready')),
                TextButton(
                  onPressed: () {
                    reloadPwa();
                  },
                  child: const Text('UPDATE'),
                ),
              ],
            ),
            duration: const Duration(days: 365),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [lightBlack, darkBlack]),
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
      ),
    );
  }
}
