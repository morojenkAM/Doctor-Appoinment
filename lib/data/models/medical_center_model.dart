
import '../../domain/entities/medical_center.dart';

class MedicalCenterModel extends MedicalCenter {
  MedicalCenterModel({
    required String name,
    required String address,
    required double rating,
    required String image,
  }) : super(
    name: name,
    address: address,
    rating: rating,
    image: image,
  );

  factory MedicalCenterModel.fromJson(Map<String, dynamic> json) {
    return MedicalCenterModel(
      name: json['name'],
      address: json['address'],
      rating: json['rating'],
      image: json['image'],
    );
  }
}
