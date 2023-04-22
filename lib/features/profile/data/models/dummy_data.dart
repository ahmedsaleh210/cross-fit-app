class ProfileModel
{
  final String title;
  final String value;

  ProfileModel({required this.title, required this.value});

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      title: json['title'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
    };
  }
}

List<ProfileModel> profileData = [
  ProfileModel(title: 'Name', value: 'Ahmed'),
  ProfileModel(title: 'Gender', value: 'Male'),
  ProfileModel(title: 'Age', value: '21 Year'),
  ProfileModel(title: 'Height', value: '173.0'),
  ProfileModel(title: 'Weight', value: '80.0 Kg'),
  ProfileModel(title: 'Percent body fat', value: '20%'),
  ProfileModel(title: 'Fat mass', value: '19 Kg'),
  ProfileModel(title: 'Muscle mass', value: '61 Kg'),
  ProfileModel(title: 'BMI', value: '22'),
  ProfileModel(title: 'Daily calories', value: '1609.0'),
];