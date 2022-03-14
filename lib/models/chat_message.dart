enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_viwed, viewed }

class ChatMessage {
  final String text;
  final bool isSender;
  final MessageStatus messageStatus;
  final ChatMessageType chatMessageType;
  ChatMessage({
    required this.text,
    required this.isSender,
    required this.messageStatus,
    required this.chatMessageType,
  });
}

List dummyChatMessages = [
  ChatMessage(
      text: "Hey Man,",
      isSender: false,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.text),
  ChatMessage(
      text: "Hi",
      isSender: true,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.text),
  ChatMessage(
      text: "Hey how are you?",
      isSender: false,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.text),
  ChatMessage(
      text: "I am fine. thanks",
      isSender: true,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.image),
  ChatMessage(
      text: "",
      isSender: false,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.audio),
  ChatMessage(
      text: "",
      isSender: true,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.video),
  ChatMessage(
      text: "",
      isSender: true,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.audio),
  ChatMessage(
      text: "Naruto asked for your help",
      isSender: true,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.text),
  ChatMessage(
      text: "Need a sand refill first",
      isSender: false,
      messageStatus: MessageStatus.viewed,
      chatMessageType: ChatMessageType.text),
];