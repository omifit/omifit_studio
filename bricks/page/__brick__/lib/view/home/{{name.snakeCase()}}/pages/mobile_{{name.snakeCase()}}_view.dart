import 'package:omifit/utils/utils.dart';

class Mobile{{name.pascalCase()}}View extends StatefulWidget {
  const Mobile{{name.pascalCase()}}View({super.key});

  @override
  State<Mobile{{name.pascalCase()}}View> createState() => _Mobile{{name.pascalCase()}}ViewState();
}

class _Mobile{{name.pascalCase()}}ViewState extends State<Mobile{{name.pascalCase()}}View> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Text("new mason page")
    );
  }
}