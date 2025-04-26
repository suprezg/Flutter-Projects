import 'package:flutter/material.dart';
import '../models/chat_message.dart';
import 'message_bubble.dart';

class MessagesList extends StatelessWidget {
  final List<ChatMessage> messages;

  const MessagesList({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: messages.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return MessageBubble(message: messages[index]);
      },
    );
  }
}