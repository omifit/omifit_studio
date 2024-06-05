import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/utils/location_serach.dart';

final authViewModelProvider = ChangeNotifierProvider((ref) => AuthViewModel(ref:ref));

class AuthViewModel extends ChangeNotifier {
  Ref ref;
  AuthViewModel({required this.ref});
  //! sign in
  final TextEditingController _phoneSigninController = TextEditingController();
  TextEditingController get phoneSigninController => _phoneSigninController;
  final TextEditingController _otpSigninController = TextEditingController();
  TextEditingController get otpSigninController => _otpSigninController;
  void clearSigninData(){
    _phoneSigninController.clear();
    _otpSigninController.clear();
    notifyListeners();
  }
  //! sign up
  final TextEditingController _nameSignupController = TextEditingController();
  TextEditingController get nameSignupController => _nameSignupController;
  final TextEditingController _phoneSignupController = TextEditingController();
  TextEditingController get phoneSignupController => _phoneSignupController;
  final TextEditingController _dobSignupController = TextEditingController();
  TextEditingController get dobSignupController => _dobSignupController;
   Gender _genderSignup = Gender.male;
  Gender get genderSignup => _genderSignup;
  void setGender(Gender gender){
  _genderSignup = gender;
    notifyListeners();
  }
  final TextEditingController _locationSignupController = TextEditingController();
  TextEditingController get locationSignupController => _locationSignupController;
  final List<String> _locationSearch = [];
  List<String> get locationSearch => _locationSearch;
  Future<void> searchLocation(String query) async {
     if (query.length > 3) {
       PlaceSearch().fetchLocationSuggestions(query).then((result) {
         _locationSearch.clear();
          _locationSearch.addAll(result);
       });
      } else { _locationSearch.clear();}
    notifyListeners();
  }
  void clearLocationSearch(){
    _locationSearch.clear();
    notifyListeners();
  }
  void clearSignupData (){
    _nameSignupController.clear();
    _phoneSignupController.clear();
    _dobSignupController.clear();
    _genderSignup = Gender.male;
    _locationSignupController.clear();
    _locationSearch.clear();
    notifyListeners();
  }

//! OTP Verification
final TextEditingController _otpController = TextEditingController();
TextEditingController get otpController => _otpController;
void clearOtpData(){
  _otpController.clear();
  notifyListeners();
}

}
