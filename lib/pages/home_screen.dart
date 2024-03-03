import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/Drawers/communitydrawer.dart';
import 'package:reddit_clone/auth/auth_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Home",
          style: TextStyle(
            // color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              // color: Colors.white,
            ),
            onPressed: () => displayDrawer(context),
          );
        }),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              // color: Colors.white,
            ),
          ),
          IconButton(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(user.profilepic),
              ),
              onPressed: () {} //=> displayDrawer,
              )
        ],
      ),
      drawer: const MyCommunityListDrawer(),
    );
  }
}
