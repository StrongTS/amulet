class Amulet {
  String name;
  String price;
  String image;
  Amulet({required this.name, required this.price, required this.image});
}

final amulets = [
  Amulet(name: "พระปิดตา ver. 1", price: "บูชา 20 USD", image: "assets/1.png"),
  Amulet(
      name: "เครื่องรางรุ่นแรก", price: "บูชา 15 USD", image: "assets/2.png"),
];
