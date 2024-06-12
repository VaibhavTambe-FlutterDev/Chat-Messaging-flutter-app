class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;
  final int count;

  Chat({
    this.name = '',
    this.count = 0,
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Emma Watson",
    lastMessage: "Hey there!",
    image: "assets/images/user.png",
    time: "2h ago",
    isActive: false,
    count: 1
  ),
  Chat(
    name: "John Doe",
    lastMessage: "Good morning!",
    image: "assets/images/user_2.png",
    time: "1h ago",
    isActive: true,
    count: 0

  ),
  Chat(
    name: "Alice Smith",
    lastMessage: "What's up?",
    image: "assets/images/user_3.png",
    time: "4h ago",
    count: 3,
    isActive: false,
  ),
  Chat(
    name: "Michael Johnson",
    lastMessage: "How are you?",
    image: "assets/images/user_4.png",
    time: "5h ago",
    count: 0,
    isActive: true,
  ),
  Chat(
    name: "Sarah Lee",
    lastMessage: "Thanks!",
    image: "assets/images/user_5.png",
    time: "3h ago",
    count: 0,
    isActive: false,
  ),
  Chat(
    name: "David Brown",
    lastMessage: "Let's meet tomorrow.",
    image: "assets/images/user.png",
    time: "1h ago",
    count: 1,
    isActive: false,
  ),
  Chat(
    name: "Sophia Miller",
    lastMessage: "I'm fine, thanks!",
    image: "assets/images/user_2.png",
    time: "1d ago",
    count: 0,
    isActive: true,
  ),
  Chat(
    name: "Robert Taylor",
    lastMessage: "Call me when you're free.",
    image: "assets/images/user_3.png",
    time: "2d ago",
    count: 0,
    isActive: false,
  ),
];
