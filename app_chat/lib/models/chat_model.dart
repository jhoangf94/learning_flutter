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
      time: "2019-03-13 14:56:59",
      imageUrl: "https://via.placeholder.com/150/92c952"),
      
  ChatModel(
      name: "Sebastian Vergara",
      message: "Bien, tu como estas?",
      time: "2019-04-14 12:56:59",
      imageUrl: "https://via.placeholder.com/150/d32776")
];
