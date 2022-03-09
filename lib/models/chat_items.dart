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
  lastMessage: "Did you watch my Anime?",
  image: "assets/images/profile_images/anos-voligoad-profile.jpeg",
  time: "2m ago",
  isActive: true
),
ChatItems(
  name: "Edward Elric",
  lastMessage: "My brother and I are going on a trip.",
  image: "assets/images/profile_images/edward-profile.jpeg",
  time: "8m ago",
  isActive: false
),
ChatItems(
  name: "Bokuto",
  lastMessage: "hey hey hey !!!",
  image: "assets/images/profile_images/bokuto-profile.jpeg",
  time: "2d ago",
  isActive: true
),
ChatItems(
  name: "Zeke Yeager",
  lastMessage: "My plan is going to be successful. Want in ?",
  image: "assets/images/profile_images/zeke-yeager-profile.jpeg",
  time: "4d ago",
  isActive: true
),
ChatItems(
  name: "Genos",
  lastMessage: "Gonna repair my arm today.",
  image: "assets/images/profile_images/genos-profile.jpeg",
  time: "10d ago",
  isActive: false
),
ChatItems(
  name: "Baki",
  lastMessage: "Thanks",
  image: "assets/images/profile_images/baki-profile.jpeg",
  time: "10d ago",
  isActive: false
),
ChatItems(
  name: "Gaara",
  lastMessage: "Need a sand refill.",
  image: "assets/images/profile_images/gaara-profile.jpeg",
  time: "12d ago",
  isActive: false
),
ChatItems(
  name: "Zenitsu",
  lastMessage: "Nezuko Chaaaaaaan !",
  image: "assets/images/profile_images/zenitsu-profile.jpeg",
  time: "15d ago",
  isActive: false
),
ChatItems(
  name: "Senku",
  lastMessage: "One billion percent I am sure.",
  image: "assets/images/profile_images/senku-profile.jpeg",
  time: "17d ago",
  isActive: false
),

];
