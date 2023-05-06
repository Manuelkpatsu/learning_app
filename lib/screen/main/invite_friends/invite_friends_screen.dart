import 'package:flutter/material.dart';
import 'package:learning_app/models/friend.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/search_text_field.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/friend_tile.dart';

class InviteFriendsScreen extends StatefulWidget {
  static const routeName = '/invite_friends';

  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Friend> _friends = [
    const Friend(
      id: 1,
      name: 'Wade Warren',
      image: 'assets/images/friends/1.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.beginner,
    ),
    const Friend(
      id: 2,
      name: 'Esther Howard',
      image: 'assets/images/friends/2.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.intermediate,
    ),
    const Friend(
      id: 3,
      name: 'Jenny Wilson',
      image: 'assets/images/friends/3.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.beginner,
    ),
    const Friend(
      id: 4,
      name: 'Robert Fox',
      image: 'assets/images/friends/4.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.intermediate,
    ),
    const Friend(
      id: 5,
      name: 'Bessie Cooper',
      image: 'assets/images/friends/5.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.beginner,
    ),
    const Friend(
      id: 6,
      name: 'Jerome Bell',
      image: 'assets/images/friends/6.png',
      address: 'Oxford OX1 2JD, UK',
      status: Status.beginner,
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldBackgroundColor,
        title: const AppBarTitle(title: 'Invite Friends'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(
              controller: _searchController,
              hintText: 'Search for your friends',
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _friends.length,
        itemBuilder: (ctx, index) {
          final friend = _friends[index];

          return Padding(
            padding: EdgeInsets.only(bottom: index == _friends.length - 1 ? 0 : 16),
            child: FriendTile(
              friend: friend,
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
