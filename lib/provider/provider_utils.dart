import 'package:navigation_app/model/app_state.dart';
import 'package:navigation_app/ui.dart';
import 'package:navigation_app/view_model/app_view_model.dart';
import 'package:navigation_app/views/navigation/app_navigation_controller.dart';

extension ProviderUtils on BuildContext {
  AppViewModel get appViewModel => read<AppViewModel>();

  AppNavigationController get navigation => read<AppNavigationController>();
}

mixin AppProviderMixin<S extends StatefulWidget> on State<S> {
  AppState get appState => context.watch<AppState>();
}
