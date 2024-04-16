import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapipractice/Home/home_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView, initial: true)
],
dependencies: [
  Singleton(classType: NavigationService)
])


class App {}