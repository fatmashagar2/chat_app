import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/features/home/presentation/view/widget/chat_item.dart';
import 'package:flutter/material.dart';

class ListChatItem extends StatelessWidget {
  const ListChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children:  const [
      ChatItem(
        name: 'Fatma',
        subtitle: '#01030847852',
        clock: '12:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '1:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '2:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma',
        subtitle: '#01030847852',
        clock: '12:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '1:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '2:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma',
        subtitle: '#01030847852',
        clock: '12:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '1:00',
        imagePath: AssetImages.profile,
      ),
      ChatItem(
        name: 'Fatma2',
        subtitle: '#01030847852',
        clock: '2:00',
        imagePath: AssetImages.profile,
      ),
    ]);
  }
}
