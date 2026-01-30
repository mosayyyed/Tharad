import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'header_title')
  final String headerTitle;

  @JsonKey(name: 'about_title')
  final String aboutTitle;

  @JsonKey(name: 'about_content')
  final String aboutContent;

  @JsonKey(name: 'work_title')
  final String workTitle;

  @JsonKey(name: 'work_features')
  final List<WorkFeature> workFeatures;

  const HomeModel({
    required this.headerTitle,
    required this.aboutTitle,
    required this.aboutContent,
    required this.workTitle,
    required this.workFeatures,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class WorkFeature {
  final String title;

  const WorkFeature({required this.title});

  factory WorkFeature.fromJson(Map<String, dynamic> json) =>
      _$WorkFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$WorkFeatureToJson(this);
}
