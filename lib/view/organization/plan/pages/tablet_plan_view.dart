import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/organization_view_model.dart';

class TabletPlanView extends ConsumerStatefulWidget {
  const TabletPlanView({super.key});

  @override
  ConsumerState<TabletPlanView> createState() => _TabletPlanViewState();
}

class _TabletPlanViewState extends ConsumerState<TabletPlanView> {
  @override
  Widget build(BuildContext context) {
    final OrganizationViewModel organizationViewModel =
        ref.watch(organizationViewModelProvider);
    return const Scaffold(body: Text("new mason page"));
  }
}
