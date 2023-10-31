import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/pages/home_page.dart';
import '../pages/ordering2.dart';
import '../pages/ordering_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: '/ordering',
      builder: (BuildContext context, GoRouterState state) =>
          const OrderingPage(),
    ),
    GoRoute(
      path: '/screen2',
      builder: (BuildContext context, GoRouterState state) =>
          const SecondOrderingPage(),
    ),
  ],
);
