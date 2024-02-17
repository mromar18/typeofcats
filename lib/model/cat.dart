class Cat {
  String length;
  String origin;
  String imageLink;
  double minWeight;
  double maxWeight;
  String name;
  int? intelligence;

  Cat({
    required this.length,
    required this.origin,
    required this.imageLink,
    required this.minWeight,
    required this.maxWeight,
    required this.name,
    required this.intelligence
  });

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
    length: json["length"],
    origin: json["origin"],
    imageLink: json["image_link"],
    minWeight: json["min_weight"]?.toDouble(),
    maxWeight: json["max_weight"],
    name: json["name"],
    intelligence: json["intelligence"]
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "origin": origin,
    "image_link": imageLink,
    "min_weight": minWeight,
    "max_weight": maxWeight,
    "name": name,
    "intelligence":intelligence
  };
}