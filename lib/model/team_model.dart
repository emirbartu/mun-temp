class TeamModel {
  final String imageUrl;
  final String name;
  final String role;

  TeamModel({
    required this.imageUrl,
    required this.name,
    required this.role,
  });
}

List<TeamModel> teamList = [
  TeamModel(
    imageUrl: "https://picsum.photos/200",
    name: 'Team Member 1',
    role: 'Developer',
  ),
  TeamModel(
    imageUrl: "https://picsum.photos/201",
    name: 'Team Member 2',
    role: 'Designer',
  ),
  TeamModel(
    imageUrl: "https://picsum.photos/202",
    name: 'Team Member 3',
    role: 'Manager',
  ),
];
