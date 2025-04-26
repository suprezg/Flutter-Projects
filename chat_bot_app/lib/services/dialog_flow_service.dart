import 'package:dialog_flowtter/dialog_flowtter.dart';

class DialogFlowService {
  late DialogFlowtter _df;

  Future<void> init() async {
    _df = await DialogFlowtter.fromFile();
  }

Future<String?> sendQuery(String text) async {
  final response = await _df.detectIntent(
    queryInput: QueryInput(text: TextInput(text: text)),
  );

  final message = response.message;

  // Check if message and message.text are not null, and text list is not empty
  if (message?.text?.text != null && message!.text!.text!.isNotEmpty) {
    return message.text!.text!.first;
  }

  return null; // or return a default message like 'No response'
}
}