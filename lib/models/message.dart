import 'package:meta/meta.dart';

@immutable
class MessageData {
  const MessageData(
      {required this.senderName,
      required this.message,
      required this.MessageDate,
      required this.dateMessage,
      required this.profilePicture});

  final String senderName;
  final String message;
  final DateTime MessageDate;
  final String dateMessage;
  final String profilePicture;
}
