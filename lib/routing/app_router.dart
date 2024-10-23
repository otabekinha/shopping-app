import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/screens/cart/cart.dart';
import 'package:shopping_app/screens/home/home.dart';

enum AppRoute {
  cart,
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'cart',
          name: AppRoute.cart.name,
          pageBuilder: (context, state) => const MaterialPage(
            fullscreenDialog: true,
            child: CartScreen(),
          ),
        ),
      ],
    ),
  ],
);
