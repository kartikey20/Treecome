class CommitteeList {
  final String name;
  final String designation;
  final String location;

  CommitteeList({this.name, this.designation, this.location});

  factory CommitteeList.fromJson(Map<String, dynamic> json) {
    return CommitteeList(
      name: json['name'] as String,
      designation: json['designation'] as String,
      location: json['location'] as String,
    );
  }
}
