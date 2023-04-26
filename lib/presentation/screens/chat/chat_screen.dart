import 'package:flutter/material.dart';

import '../../widgets/chat/her_message_bubble.dart';
import '../../widgets/chat/my_message_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _ChatView(),
    );
  }
}

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ichef.bbci.co.uk/news/640/cpsprodpb/17F65/production/_127594189_gettyimages-1427974229.jpg'),
        ),
      ),
      title: const Text('My Favorite Artist'),
      //centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              })),

            // caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
