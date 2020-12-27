import 'package:auto_route/auto_route_annotations.dart';

import '../ui/views/auth/auth_view.dart';
import '../ui/views/forgot/forgot_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/register/register_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: AuthView, initial: true),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: ForgotView),
    MaterialRoute(page: HomeView),
  ],
)
class $Router {}
