import 'package:omifit/utils/utils.dart';

final memberViewModelProvider =
    ChangeNotifierProvider((ref) => MemberViewModel(ref: ref));

class MemberViewModel extends ChangeNotifier {
  Ref ref;
  MemberViewModel({required this.ref});
  final ValueNotifier<int> _addMemberDialogPage = ValueNotifier(0);
  ValueNotifier<int> get addMemberDialogPage => _addMemberDialogPage;
}
