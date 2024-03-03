import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/auth/community.controller.dart';
import 'package:reddit_clone/widgets/error.dart';
import 'package:reddit_clone/widgets/loader.dart';
import 'package:routemaster/routemaster.dart';

class MyCommunityListDrawer extends ConsumerWidget {
  const MyCommunityListDrawer({super.key});

  void navigateToCommunityScreen(BuildContext context) {
    Routemaster.of(context).push("/community_screen");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: DrawerHeader(
                child: Text(
                  "REDDIT",
                  style: TextStyle(
                      // color: Colors.grey[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 38),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Create a community",
                style: TextStyle(
                  // color: Colors.grey[100],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              leading: const Icon(
                Icons.add,
                // color: Colors.grey[100],
              ),
              onTap: () => navigateToCommunityScreen(context),
            ),
            ref.watch(userCommunitiesProvider).when(
                  data: (communities) => Expanded(
                    child: ListView.builder(
                        itemCount: communities.length,
                        itemBuilder: (BuildContext context, int index) {
                          final community = communities[index];
                          print(communities.length);
                          return ListTile(
                            // leading: CircleAvatar(
                            //   backgroundImage: NetworkImage(community.avatar),
                            // ),
                            title: Text('r/${community.name}'),
                            onTap: () {},
                          );
                        }),
                  ),
                  error: (error, stackTrace) =>
                      ErrorText(error: error.toString()),
                  loading: () => const Loader(),
                )
          ],
        ),
      ),
    );
  }
}
