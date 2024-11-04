import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/calls/presentation/view/widget/call_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListCallItems extends StatelessWidget {
  const ListCallItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:   [
        Padding(
          padding: EdgeInsets.only(left: 8.w,bottom: 10.h),
          child: const Text("Recent ",),
        ),
        const CallItem(txt: "Fatma1",subtitle: "24 October, 12:00 pm",icon: Icon(Icons.call),),
        const CallItem(txt: "Fatma1",subtitle: "20 October, 3:00 pm",icon: Icon(Icons.call),),
        const CallItem(txt: "Fatma1",subtitle: "2 October, 8:00 pm",icon: Icon(Icons.call),),
        const CallItem(txt: "Fatma1",subtitle: "4 October, 5:00 pm",icon: Icon(Icons.call),),
        const CallItem(txt: "Fatma1",subtitle: "6 October, 6:00 pm",icon: Icon(Icons.call),),
        const CallItem(txt: "Fatma1",subtitle: "18 October, 9:00 pm",icon: Icon(Icons.call),),

      ],
    );
  }
}
