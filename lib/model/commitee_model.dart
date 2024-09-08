class CommiteeModel {
  final String logoUrl;
  final String name;
  final String inspect;

  CommiteeModel({
    required this.logoUrl,    
    required this.name,
    required this.inspect,
  });
}

List<CommiteeModel> certificateList = [
  CommiteeModel(
    logoUrl: "",
    name: 'Commitee1',
    inspect:  'https://www.coursera.org/account/accomplishments/certificate/HQ4LFHSF4LKZ',
  ),
  CommiteeModel(
    logoUrl: "",
    name: 'Commitee2',
    inspect:  'https://www.linkedin.com/learning/certificates/450fc4e2f495726aea50a067caf586869ccf0cb92ebcc5a4c7b5648a95754a8f',
  ),
  CommiteeModel(
    logoUrl: "",
    name: 'Commitee3',
    inspect:  'https://www.udemy.com/certificate/UC-5b01c756-0d20-4342-94e6-9d5860d1c95e/',
  ),
];
