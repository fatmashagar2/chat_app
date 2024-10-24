import 'package:chat_app/features/status/presentation/view/widget/story_item.dart';
import 'package:flutter/material.dart';

class ListStoryItem extends StatelessWidget {
  const ListStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        StoryItem(
          txt: 'My Status',
          subtitle: 'Tap to add status update',
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Recent updates"),
        ),
        StoryItem(
          txt: 'Fatma',
          subtitle: '12:00',
        ),
        StoryItem(
          txt: 'Fatma1',
          subtitle: '5:00',
        ),
        StoryItem(
          txt: 'Fatma2',
          subtitle: '8:00',
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Viewed updates"),
        ),
        StoryItem(
          txt: 'Fatma3',
          subtitle: '11:00',
        ),
        StoryItem(
          txt: 'Fatma4',
          subtitle: '1:00',
        ),
      ],
    );
  }
}
