import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobileLeadView extends ConsumerStatefulWidget {
  const MobileLeadView({super.key});

  @override
  ConsumerState<MobileLeadView> createState() => _MobileLeadViewState();
}

class _MobileLeadViewState extends ConsumerState<MobileLeadView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return const Scaffold(
        body: SingleChildScrollView(
      child: PaddedColumn(children: []),
    ));
  }
}
