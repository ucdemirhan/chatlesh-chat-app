class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: "Mehmet Mayti",
    lastMessage: "Yok be oloooom",
    image: "assets/images/user.png",
    time: "3dk önce",
    isActive: false,
  ),
  Chat(
    name: "Mehmet Karalar",
    lastMessage: "Merhaba, ben Mehmet",
    image: "assets/images/user_2.png",
    time: "8dk önce",
    isActive: true,
  ),
  Chat(
    name: "Arda Çakrak",
    lastMessage: "Güncellemeleri yaptın mı?",
    image: "assets/images/user_3.png",
    time: "5dk önce",
    isActive: false,
  ),
  Chat(
    name: "Mehmet Akif Gözüm",
    lastMessage: "Rica ederim :)",
    image: "assets/images/user_4.png",
    time: "5dk önce",
    isActive: true,
  ),
  Chat(
    name: "Hüseyin Oral",
    lastMessage: "Teşekkürler",
    image: "assets/images/user_5.png",
    time: "6dk önce",
    isActive: false,
  ),
  Chat(
    name: "Ertuğrul Koç",
    lastMessage: "Napıyorsun?",
    image: "assets/images/user.png",
    time: "3dk önce",
    isActive: false,
  ),
  Chat(
    name: "Ankaralı Namık",
    lastMessage: "Merhaba Ufuğum!",
    image: "assets/images/user_2.png",
    time: "8dk önce",
    isActive: true,
  ),
  Chat(
    name: "Ciguli Gonzalez",
    lastMessage: "DENEME TEST",
    image: "assets/images/user_3.png",
    time: "5dk önce",
    isActive: false,
  ),
];
