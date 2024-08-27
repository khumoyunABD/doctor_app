import 'package:doctor_app/presentation/rest/home.dart';
import 'package:doctor_app/presentation/rest/messages.dart';
import 'package:doctor_app/presentation/rest/notifications.dart';
import 'package:doctor_app/presentation/rest/profile.dart';
import 'package:doctor_app/presentation/rest/tabs.dart';
import 'package:doctor_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const MainTabs(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/notifications',
          builder: (context, state) => const NotificationsScreen(),
        ),
        GoRoute(
          path: '/messages',
          builder: (context, state) => const MessagesScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Tashkent Medical Park',
      theme: ThemeData(
        fontFamily: "Nunito",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) {
        // Initialize SizeConfig with the context
        SizeConfig.initSize(context);

        // Return the child widget (which is the router's output)
        return child!;
      },
      // Builder(
      //   builder: (context) {
      //     SizeConfig.initSize(context);
      //     return const HomeScreen();
      //   },
      // ),
    );
  }
}
