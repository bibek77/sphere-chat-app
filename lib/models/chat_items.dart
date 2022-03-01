class ChatItems {
  final String name;
  final String lastMessage;
  final String image;
  final String time;
  final bool isActive;

  ChatItems({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.isActive,
  });
}

List chatData = [

ChatItems(
  name: "Anos Voldigoad",
  lastMessage: "Did you watch that Anime?",
  image: "assets/images/johndoe_1.png",
  time: "2m ago",
  isActive: false
),
ChatItems(
  name: "Edward Elric",
  lastMessage: "My brother and I are going on a trip.",
  image: "assets/images/johndoe_2.png",
  time: "8m ago",
  isActive: false
),
ChatItems(
  name: "Bokuto",
  lastMessage: "hey hey hey !!!",
  image: "assets/images/johndoe_3.png",
  time: "2d ago",
  isActive: false
),
ChatItems(
  name: "Zeke Yeager",
  lastMessage: "My plan is going to be successful. Want in ?",
  image: "assets/images/johndoe_4.png",
  time: "4d ago",
  isActive: false
),
ChatItems(
  name: "Genos",
  lastMessage: "Gonna repair my arm today.",
  image: "assets/images/johndoe_5.png",
  time: "10d ago",
  isActive: false
),

];
