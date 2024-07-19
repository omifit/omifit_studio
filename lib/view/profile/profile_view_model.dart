import 'package:omifit/core/constants.dart';
import 'package:omifit/data/auth/auth_repo.dart';
import 'package:omifit/data/auth/auth_repo_impl.dart';
import 'package:omifit/data/auth/model/send_otp/sendotp_model.dart';
import 'package:omifit/data/auth/model/user_details/user_details_model.dart';
import 'package:omifit/data/auth/model/user_update/user_details_update_model.dart';
import 'package:omifit/data/auth/model/verify_otp/verifyotp_model.dart';
import 'package:omifit/utils/location_serach.dart';
import 'package:omifit/utils/parse.dart';
import 'package:omifit/utils/utils.dart';

final profileViewModelProvider =
    ChangeNotifierProvider((ref) => ProfileViewModel(ref: ref));

class ProfileViewModel extends ChangeNotifier {
  Ref ref;
  ProfileViewModel({required this.ref});
  final AuthRepo _authRepo = AuthRepoImpl();

  final ValueNotifier<int> _pageIndexNotifier = ValueNotifier(0);
  ValueNotifier<int> get pageIndexNotifier => _pageIndexNotifier;
  void setPageIndex(int index) {
    _pageIndexNotifier.value = index;
    notifyListeners();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  Gender _gender = Gender.male;
  String _profession = "Student";

  TextEditingController get nameController => _nameController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get dobController => _dobController;
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

  //@ remove ============+++>
  final TextEditingController _locationController = TextEditingController();
  TextEditingController get locationController => _locationController;
  final List<String> _locationSearch = [];
  List<String> get locationSearch => _locationSearch;
  Future<void> searchLocation(String query) async {
    if (query.length > 3) {
      PlaceSearch().fetchLocationSuggestions(query).then((result) {
        _locationSearch.clear();
        _locationSearch.addAll(result);
      });
    } else {
      _locationSearch.clear();
    }
    notifyListeners();
  }

  void clearLocationSearch() {
    _locationSearch.clear();
    notifyListeners();
  }
  //@ remove ============+++>

  void clearProfileData() {
    _nameController.clear();
    _phoneController.clear();
    _dobController.clear();
    _gender = Gender.male;
    _locationController.clear();
    _locationSearch.clear();
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
        _pageIndexNotifier.value = 1;
        notifyListeners();
      });
      notifyListeners();
    });
  }

  bool _lodingvotp = false;
  bool get lodingvotp => _lodingvotp;
  Future<void> verifyOtp(String otp, BuildContext ctx) {
    _lodingvotp = true;
    notifyListeners();
    return _authRepo
        .verifyOtp(VerifyOtpReq(
      phoneNumber: phonesendParse(_phoneController.text),
      otp: otp,
    ))
        .then((value) {
      _lodingvotp = false;
      value.fold((l) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          content: Text(l.message),
        ));
      }, (r) {
        _pageIndexNotifier.value = 0;
        ctx.pop();
        userUpdate(
            UserDetailsUpdateReq(
              name: _nameController.text,
              phoneNumber: phonesendParse(_phoneController.text),
              dateOfBirth: _dobController.text,
            ),
            ctx);
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
