import 'package:omifit/data/organization/organization_repo_impl.dart';
import 'package:omifit/utils/utils.dart';

final organizationViewModelProvider =
    ChangeNotifierProvider((ref) => OrganizationViewModel(ref: ref));

class OrganizationViewModel extends ChangeNotifier {
  Ref ref;
  OrganizationViewModel({required this.ref});
  final _orgRepo = OrganizationRepoImpl();
}
