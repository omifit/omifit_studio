import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';

class TabletLeadView extends ConsumerStatefulWidget {
  const TabletLeadView({super.key});

  @override
  ConsumerState<TabletLeadView> createState() => _TabletLeadViewState();
}

class _TabletLeadViewState extends ConsumerState<TabletLeadView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return const Scaffold(body: Text("new mason page"));
  }
}
