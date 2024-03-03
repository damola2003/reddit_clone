// logged out
// logged in

import 'package:flutter/material.dart';
import 'package:reddit_clone/pages/community_screen.dart';
import 'package:reddit_clone/pages/home_screen.dart';
import 'package:reddit_clone/pages/log_in_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  "/": (_) => const MaterialPage(child: LogInPage()),
});
final loggedInRoute = RouteMap(routes: {
  "/": (_) => const MaterialPage(child: HomeScreen()),
  "/community_screen": (_) =>
      const MaterialPage(child: CreateCommunityScreen()),
});
