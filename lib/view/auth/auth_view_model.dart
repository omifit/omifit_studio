import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/auth/model/login/login_model.dart';
import 'package:omifit/data/auth/model/register/register_model.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/services/shared_preference_service.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/profile/profile_view_model.dart';

final authViewModelProvider =
    ChangeNotifierProvider((ref) => AuthViewModel(ref: ref));

class AuthViewModel extends ChangeNotifier {
  Ref ref;
  AuthViewModel({required this.ref});
  final AuthRepo _authRepo = AuthRepoImpl();

  //@@ sign-in ==========> (view)
  final TextEditingController _phoneSigninCtrl = TextEditingController();
  TextEditingController get phoneSigninCtrl => _phoneSigninCtrl;
  void clearSigninData() {
    _phoneSigninCtrl.clear();
    notifyListeners();
  }

  //@@ sign-up ============> (view)
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _phoneSignupCtrl = TextEditingController();
  final TextEditingController _dobCtrl = TextEditingController();
  Gender _gender = Gender.male;
  String _profession = "Student";

  TextEditingController get nameCtrl => _nameCtrl;
  TextEditingController get phoneSignupCtrl => _phoneSignupCtrl;
  TextEditingController get dobCtrl => _dobCtrl;
  Gender get gender => _gender;
  String get profession => _profession;

  void setGender(Gender gender) {
    _gender = gender;
    notifyListeners();
  }

  void setProfession(String profession) {
    _profession = profession;
    notifyListeners();
  }

  void clearSignupData() {
    _nameCtrl.clear();
    _phoneSignupCtrl.clear();
    _dobCtrl.clear();
    _gender = Gender.male;
    _profession = "Student";
    notifyListeners();
  }

//@@ OTP-Verify ===============> (view)
  final TextEditingController _otpCtrl = TextEditingController();
  TextEditingController get otpCtrl => _otpCtrl;
  void clearOtpData() {
    _otpCtrl.clear();
    notifyListeners();
  }

  //! send otp *****************> (Apis)
  bool _lodingsendotp = false;
  bool get lodingsendotp => _lodingsendotp;
  Future<void> sendOtp(SendOtpReq soreq, BuildContext ctx) async {
    _lodingsendotp = true;
    notifyListeners();
    await _authRepo.sendOtp(soreq).then((value) {
      _lodingsendotp = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        final String isLogin = soreq.forOldUser == true ? 'true' : 'false';
        ctx.pushNamed(AppRoute.verify.name,
            pathParameters: {'isLogin': isLogin});
      });
      notifyListeners();
    });
  }

  //! Login ****************> (Apis)
  bool _lodinglogin = false;
  bool get lodinglogin => _lodinglogin;
  Future<void> login(LoginReq loginReq, BuildContext ctx) async {
    _lodinglogin = true;
    notifyListeners();
    await _authRepo.login(loginReq).then((value) {
      _lodinglogin = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        SharedPreferenceService.setString('token', r.body!.token.toString());
        SharedPreferenceService.setString('uid', r.body!.user!.id.toString());
        ref.read(profileViewModelProvider).userDetails(ctx);
        ctx.goNamed(AppRoute.profile.name, pathParameters: {'isBack': 'false'});
        clearOtpData();
        clearSigninData();
      });
      notifyListeners();
    });
  }

  //! register ****************> (Apis)
  bool _lodingregister = false;
  bool get lodingregister => _lodingregister;
  Future<void> register(RegisterReq registerReq, BuildContext ctx) async {
    _lodingregister = true;
    notifyListeners();
    await _authRepo.register(registerReq).then((value) {
      _lodingregister = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        SharedPreferenceService.setString('token', r.body!.token.toString());
        SharedPreferenceService.setString('uid', r.body!.user!.id.toString());
        ref.read(profileViewModelProvider).userDetails(ctx);
        ctx.goNamed(AppRoute.profile.name, pathParameters: {'isBack': 'false'});
        clearOtpData();
        clearSignupData();
      });
      notifyListeners();
    });
  }
}
