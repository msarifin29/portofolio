// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class ProductionModel {
  final String id;
  final String title;
  final String status;
  final String imageUrl;
  final String androidLink;
  final String appleLink;
  final String desc;
  final List<String> tools;
  final Function()? onPressedAndroid;
  final Function()? onPressedApple;
  ProductionModel({
    required this.id,
    required this.title,
    required this.status,
    required this.imageUrl,
    required this.androidLink,
    required this.appleLink,
    required this.desc,
    required this.tools,
    this.onPressedAndroid,
    this.onPressedApple,
  });

  ProductionModel copyWith({
    String? id,
    String? title,
    String? status,
    String? imageUrl,
    String? androidLink,
    String? appleLink,
    String? desc,
    List<String>? tools,
    Function()? onPressedAndroid,
    Function()? onPressedApple,
  }) {
    return ProductionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      status: status ?? this.status,
      imageUrl: imageUrl ?? this.imageUrl,
      androidLink: androidLink ?? this.androidLink,
      appleLink: appleLink ?? this.appleLink,
      desc: desc ?? this.desc,
      tools: tools ?? this.tools,
      onPressedAndroid: onPressedAndroid ?? this.onPressedAndroid,
      onPressedApple: onPressedApple ?? this.onPressedApple,
    );
  }

  @override
  String toString() {
    return 'ProductionModel(id: $id, title: $title, imageUrl: $imageUrl, androidLink: $androidLink, appleLink: $appleLink, desc: $desc, tools: $tools, onPressedAndroid: $onPressedAndroid, onPressedApple: $onPressedApple)';
  }

  @override
  bool operator ==(covariant ProductionModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.status == status &&
        other.imageUrl == imageUrl &&
        other.androidLink == androidLink &&
        other.appleLink == appleLink &&
        other.desc == desc &&
        listEquals(other.tools, tools) &&
        other.onPressedAndroid == onPressedAndroid &&
        other.onPressedApple == onPressedApple;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        status.hashCode ^
        imageUrl.hashCode ^
        androidLink.hashCode ^
        appleLink.hashCode ^
        desc.hashCode ^
        tools.hashCode ^
        onPressedAndroid.hashCode ^
        onPressedApple.hashCode;
  }
}
