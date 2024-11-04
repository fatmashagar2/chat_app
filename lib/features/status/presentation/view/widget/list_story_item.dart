import 'package:chat_app/features/status/presentation/view/widget/story_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListStoryItem extends StatelessWidget {
  const ListStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const StoryItem(
          txt: 'My Status',
          subtitle: 'Tap to add status update',
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: const Text("Recent updates"),
        ),
        const StoryItem(
          txt: 'Fatma',
          subtitle: '12:00',
        ),
        const StoryItem(
          txt: 'Fatma1',
          subtitle: '5:00',
        ),
        const StoryItem(
          txt: 'Fatma2',
          subtitle: '8:00',
        ),
         Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: const Text("Viewed updates"),
        ),
        const StoryItem(
          txt: 'Fatma3',
          subtitle: '11:00',
        ),
        const StoryItem(
          txt: 'Fatma4',
          subtitle: '1:00',
        ),
      ],
    );
  }
}
