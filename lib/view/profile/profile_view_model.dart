import 'package:omifit/core/constants.dart';
import 'package:omifit/utils/location_serach.dart';
import 'package:omifit/utils/utils.dart';

final profileViewModelProvider = ChangeNotifierProvider((ref) => ProfileViewModel(ref: ref));

class ProfileViewModel extends ChangeNotifier {
  Ref ref;
  ProfileViewModel({required this.ref});
   final ValueNotifier<int> _pageIndexNotifier = ValueNotifier(0);
   ValueNotifier<int> get pageIndexNotifier => _pageIndexNotifier;
  void setPageIndex(int index){
    _pageIndexNotifier.value = index;
    notifyListeners();
  }
  final TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;
  final TextEditingController _phoneController = TextEditingController();
  TextEditingController get phoneController => _phoneController;
  final TextEditingController _dobController = TextEditingController();
  TextEditingController get dobController => _dobController;
   Gender _gender = Gender.male;
  Gender get gender => _gender;
  void setGender(Gender gender){
  _gender = gender;
    notifyListeners();
  }
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
      } else { _locationSearch.clear();}
    notifyListeners();
  }
  void clearLocationSearch(){
    _locationSearch.clear();
    notifyListeners();
  }
  void clearProfileData (){
    _nameController.clear();
    _phoneController.clear();
    _dobController.clear();
    _gender = Gender.male;
    _locationController.clear();
    _locationSearch.clear();
    notifyListeners();
  }


}
