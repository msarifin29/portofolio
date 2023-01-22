import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectModel {
  final String title;
  final String image;
  final String url;
  final String desc;
  final List component;
  final Function()? onTap;
  ProjectModel({
    required this.title,
    required this.image,
    required this.component,
    required this.url,
    required this.desc,
    this.onTap,
  });

  @override
  String toString() {
    return 'ProjectModel(title: $title, image: $image,  url: $url,desc: $desc, component: $component)';
  }

  @override
  bool operator ==(covariant ProjectModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.image == image &&
        other.url == url &&
        other.desc == desc &&
        listEquals(other.component, component);
  }

  @override
  int get hashCode {
    return title.hashCode ^
        image.hashCode ^
        url.hashCode ^
        desc.hashCode ^
        component.hashCode;
  }
}
