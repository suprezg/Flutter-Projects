import 'package:flutter/material.dart';
import '../models/chat_message.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final align = message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start;
    final radius = BorderRadius.only(
      bottomLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomRight: Radius.circular(message.isUser ? 0 : 20),
      topLeft: Radius.circular(message.isUser ? 20 : 0),
    );

    return Row(
      mainAxisAlignment: align,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 2 / 3),
          decoration: BoxDecoration(
            borderRadius: radius,
            color: message.isUser
                ? Colors.grey.shade800
                : Colors.grey.shade900.withOpacity(0.8),
          ),
          child: Text(message.text),
        ),
      ],
    );
  }
}