import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/{{name.snakeCase()}}/pages/desktop_{{name.snakeCase()}}_view.dart';
import 'package:omifit/view/home/{{name.snakeCase()}}/pages/mobile_{{name.snakeCase()}}_view.dart';
import 'package:omifit/view/home/{{name.snakeCase()}}/pages/tablet_{{name.snakeCase()}}_view.dart';


class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Mobile{{name.pascalCase()}}View(),
        tablet: Tablet{{name.pascalCase()}}View(),
        desktop: Desktop{{name.pascalCase()}}View(),
        tv: Desktop{{name.pascalCase()}}View(),
      );
  }
}