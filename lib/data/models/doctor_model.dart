
import '../../domain/entities/doctor.dart';

class DoctorModel extends Doctor {
  DoctorModel({
    required String name,
    required double rating,
    required String medicalCenter,
    required String image,
  }) : super(
    name: name,
    rating: rating,
    medicalCenter: medicalCenter,
    image: image,
  );

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      name: json['name'],
      rating: json['rating'],
      medicalCenter: json['medicalCenter'],
      image: json['image'],
    );
  }
}
