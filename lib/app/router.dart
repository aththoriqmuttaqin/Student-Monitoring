import 'package:auto_route/auto_route_annotations.dart';

import '../ui/views/auth/auth_view.dart';
import '../ui/views/forgot/forgot_view.dart';
import '../ui/views/home/home_view.dart';
<<<<<<< HEAD
import '../ui/views/join_room/join_room_view.dart';
import '../ui/views/register/register_view.dart';
import '../ui/views/room/room_view.dart';
=======
<<<<<<< HEAD
import '../ui/views/join_room/join_room_view.dart';
import '../ui/views/register/register_view.dart';
import '../ui/views/room/room_view.dart';
=======
import '../ui/views/register/register_view.dart';
>>>>>>> master
>>>>>>> master

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: AuthView, initial: true),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: ForgotView),
    MaterialRoute(page: HomeView),
<<<<<<< HEAD
    MaterialRoute(page: JoinRoomView),
    MaterialRoute(page: RoomView),
=======
<<<<<<< HEAD
    MaterialRoute(page: JoinRoomView),
    MaterialRoute(page: RoomView),
=======
>>>>>>> master
>>>>>>> master
  ],
)
class $Router {}
