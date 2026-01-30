// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
  headerTitle: json['header_title'] as String,
  aboutTitle: json['about_title'] as String,
  aboutContent: json['about_content'] as String,
  workTitle: json['work_title'] as String,
  workFeatures: (json['work_features'] as List<dynamic>)
      .map((e) => WorkFeature.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
  'header_title': instance.headerTitle,
  'about_title': instance.aboutTitle,
  'about_content': instance.aboutContent,
  'work_title': instance.workTitle,
  'work_features': instance.workFeatures,
};

WorkFeature _$WorkFeatureFromJson(Map<String, dynamic> json) =>
    WorkFeature(title: json['title'] as String);

Map<String, dynamic> _$WorkFeatureToJson(WorkFeature instance) =>
    <String, dynamic>{'title': instance.title};
