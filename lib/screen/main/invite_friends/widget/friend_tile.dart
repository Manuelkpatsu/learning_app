import 'package:flutter/material.dart';
import 'package:learning_app/models/friend.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'address_text.dart';
import 'friend_image.dart';
import 'friend_name_text.dart';
import 'friend_status_text.dart';
import 'invite_button.dart';

class FriendTile extends StatelessWidget {
  final Friend friend;
  final VoidCallback? onPressed;

  const FriendTile({
    Key? key,
    required this.friend,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(9),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Row(
        children: [
          FriendImage(image: friend.image),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FriendNameText(name: friend.name),
                AddressText(address: friend.address),
                FriendStatusText(status: friend.status),
              ],
            ),
          ),
          const SizedBox(width: 10),
          InviteButton(onPressed: onPressed),
        ],
      ),
    );
  }
}
