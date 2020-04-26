class UsersModel {
  final int id;
  final String profileImage;
  final String name;
  final String time;
  final String lastMessage;
  final bool seen;
  final bool delivered;
  final bool sent;
  const UsersModel({
    this.id,
    this.profileImage,
    this.name,
    this.time,
    this.lastMessage,
    this.seen,
    this.delivered,
    this.sent,
  });
}

const DUMMY_CHATS_DATA = const [
  UsersModel(
      id: 1,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/netonet_il/128.jpg",
      name: "Ilene Murazik",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 2,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/smaczny/128.jpg",
      name: "Webster Weimann",
      time: "Yesterday",
      lastMessage: "Hello there, how are you",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 3,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/rikas/128.jpg",
      name: "Jarod Pouros V",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 4,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/xravil/128.jpg",
      name: "Miss Nico White",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: true,
      sent: true),
  UsersModel(
      id: 5,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/reabo101/128.jpg",
      name: "Green Nienow",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 6,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/bigmancho/128.jpg",
      name: "Ashlynn Hagenes",
      time: "Today",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 7,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/popey/128.jpg",
      name: "Rahsaan Koch II",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 8,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/adamsxu/128.jpg",
      name: "Lavinia Hilll",
      time: "2:45 PM",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: true,
      sent: true),
  UsersModel(
      id: 9,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/overcloacked/128.jpg",
      name: "Donato Kassulke",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 10,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/turkutuuli/128.jpg",
      name: "Lafayette Kutch",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 11,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/hfalucas/128.jpg",
      name: "Adella Bailey",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: true,
      sent: true),
  UsersModel(
      id: 12,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/sdidonato/128.jpg",
      name: "Althea Schumm",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 13,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/iqbalperkasa/128.jpg",
      name: "Sandrine Gerhold",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 14,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/Chakintosh/128.jpg",
      name: "Darron Gottlieb PhD",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 15,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/catadeleon/128.jpg",
      name: "Mohammed Kshlerin",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 16,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
      name: "Camilla Lockman II",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: true,
      delivered: true,
      sent: true),
  UsersModel(
      id: 17,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/VinThomas/128.jpg",
      name: "Osbaldo Stanton V",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 18,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/_kkga/128.jpg",
      name: "Heath Franecki",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: true,
      sent: true),
  UsersModel(
      id: 19,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/rdbannon/128.jpg",
      name: "Cleo Ortiz",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: false,
      sent: true),
  UsersModel(
      id: 20,
      profileImage:
          "https://s3.amazonaws.com/uifaces/faces/twitter/AM_Kn2/128.jpg",
      name: "Jordy Zulauf",
      time: "Yesterday",
      lastMessage: "Hello there, how are you ?",
      seen: false,
      delivered: true,
      sent: true)
];
