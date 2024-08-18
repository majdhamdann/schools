class Student {
  final int id;
  final String name;
  final String studentClass;
  final String section;

  Student({
    required this.id,
    required this.name,
    required this.studentClass,
    required this.section,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      studentClass: json['class'],
      section: json['section'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'class': studentClass,
      'section': section,
    };
  }
}