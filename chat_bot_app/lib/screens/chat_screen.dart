import 'package:flutter/material.dart';
import '../models/chat_message.dart';
import '../services/dialog_flow_service.dart';
import '../widgets/bot_app_bar.dart';
import '../widgets/messages_list.dart';
import '../widgets/send_message_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final DialogFlowService _dialogService = DialogFlowService();
  final List<ChatMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    _dialogService.init();
  }

  void _handleSend(String text) async {
    if (text.trim().isEmpty) return;

    setState(() {
      _messages.add(ChatMessage(text: text, isUser: true));
    });

    final reply = await _dialogService.sendQuery(text);
    if (reply != null) {
      setState(() {
        _messages.add(ChatMessage(text: reply, isUser: false));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BotAppBar(),
      body: Column(
        children: [
          Expanded(child: MessagesList(messages: _messages)),
          SendMessageField(onSend: _handleSend),
        ],
      ),
    );
  }
}