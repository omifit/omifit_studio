import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details/user_details_model.dart';
import 'package:omifit/data/auth/model/user_update/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';
import 'package:omifit/utils/utils.dart';

final profileViewModelProvider =
    ChangeNotifierProvider((ref) => ProfileViewModel(ref: ref));

class ProfileViewModel extends ChangeNotifier {
  Ref ref;
  ProfileViewModel({required this.ref});
  final AuthRepo _authRepo = AuthRepoImpl();

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
        ctx.pushNamed(AppRoute.updatePhone.name);
      });
      notifyListeners();
    });
  }

  //! verify otp *****************> (Apis)
  bool _lodingvotp = false;
  bool get lodingvotp => _lodingvotp;
  Future<void> verifyOtp(String phone, String otp, BuildContext ctx) {
    _lodingvotp = true;
    notifyListeners();
    return _authRepo
        .verifyOtp(VerifyOtpReq(
      phoneNumber: phone,
      otp: otp,
    ))
        .then((value) {
      _lodingvotp = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        ctx.pop();
        userUpdate(_userupReq, ctx);
        notifyListeners();
      });
      notifyListeners();
    });
  }

  //! user-details *************> (Apis)
  bool _lodinguserdetails = false;
  bool get lodinguserdetails => _lodinguserdetails;
  UserDetailsRes? _userDetailsRes;
  UserDetailsRes? get userDetailsRes => _userDetailsRes;
  Future<void> userDetails(BuildContext ctx) async {
    _lodinguserdetails = true;
    notifyListeners();
    await _authRepo.userDetails().then((value) {
      _lodinguserdetails = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        _userDetailsRes = r;
        notifyListeners();
      });
    });
  }

  //! user-update *************> (Apis)
  UserDetailsUpdateReq _userupReq = const UserDetailsUpdateReq();
  UserDetailsUpdateReq get userupReq => _userupReq;
  void setUserupReq(UserDetailsUpdateReq userupReq) {
    _userupReq = userupReq;
    notifyListeners();
  }

  bool _lodinguserupdate = false;
  bool get lodinguserupdate => _lodinguserupdate;
  Future<void> userUpdate(
      UserDetailsUpdateReq userupReq, BuildContext ctx) async {
    _lodinguserupdate = true;
    notifyListeners();
    await _authRepo.updateDetails(userupReq).then((value) {
      _lodinguserupdate = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          content: Text("Profile Updated Successfully"),
        ));
        userDetails(ctx);
        ctx.pop();
        notifyListeners();
      });
      notifyListeners();
    });
  }
}
