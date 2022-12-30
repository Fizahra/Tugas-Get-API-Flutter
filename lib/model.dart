class Staff {
  final String id;
  final String name;
  final String position;

  const Staff({required this.id, required this.name, required this.position});

  factory Staff.fromJson(Map<String, dynamic> json) {
    return Staff(
        id: json['id'], name: json['name'], position: json['position']);
  }
}
