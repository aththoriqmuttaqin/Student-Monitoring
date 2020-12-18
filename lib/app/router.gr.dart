// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/auth/auth_view.dart';
import '../ui/views/forgot/forgot_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/register/register_view.dart';

class Routes {
  static const String authView = '/';
  static const String registerView = '/register-view';
  static const String forgotView = '/forgot-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    authView,
    registerView,
    forgotView,
    homeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authView, page: AuthView),
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.forgotView, page: ForgotView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AuthView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AuthView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RegisterView(),
        settings: data,
      );
    },
    ForgotView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ForgotView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
  };
}
