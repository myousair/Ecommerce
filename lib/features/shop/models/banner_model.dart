import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  String imageUrl;
  final bool active;
  final String targetScreen;

  BannerModel(
      {required this.active,
      required this.targetScreen,
      required this.imageUrl});

  Map<String, dynamic> toJson() {
    return {
      'ImageUrl': imageUrl,
      "TargetScreen": targetScreen,
      "Active": active,
    };
  }

  factory BannerModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return BannerModel(
        active: data['Active'] ?? false,
        targetScreen: data['TargetScreen'] ?? '',
        imageUrl: data['ImageUrl'] ?? '');
  }
}
