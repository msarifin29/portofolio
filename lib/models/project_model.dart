import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectModel {
  final String id;
  final String title;
  final String image;
  final String url;
  final String desc;
  final List component;
  final Function()? onTap;
  ProjectModel({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.desc,
    required this.component,
    this.onTap,
  });

  @override
  String toString() {
    return 'ProjectModel(id: $id, title: $title, image: $image, url: $url, desc: $desc, component: $component, onTap: $onTap)';
  }

  @override
  bool operator ==(covariant ProjectModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.image == image &&
        other.url == url &&
        other.desc == desc &&
        listEquals(other.component, component) &&
        other.onTap == onTap;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        image.hashCode ^
        url.hashCode ^
        desc.hashCode ^
        component.hashCode ^
        onTap.hashCode;
  }
}
