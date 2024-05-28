class OnboardingModel {
  String? image;
  String? title;
  String? description;

  OnboardingModel({this.image, this.title, this.description});

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'description': description,
      };
}
