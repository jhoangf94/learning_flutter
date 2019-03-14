class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> dataTest = [
  ChatModel(
      name: "Jhoan Gordillo",
      message: "Hola, Como estas?",
      time: "14:56",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6gCQzwkrhQDivF9LsQdwWVJXZL3tGovutGu_5Gs8sjLZw1uEc"),
      
  ChatModel(
      name: "Sebastian Vergara",
      message: "Bien, tu como estas?",
      time: "12:56",
      imageUrl: "https://asktabby.files.wordpress.com/2013/03/wpid-photo-mar-6-2013-1015-pm.jpg")
];
