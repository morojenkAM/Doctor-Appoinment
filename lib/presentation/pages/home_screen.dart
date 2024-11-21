import 'package:flutter/material.dart';
import '../../data/repositories/doctor_repository_impl.dart';
import '../../data/repositories/medical_center_repository_impl.dart';
import '../../domain/entities/doctor.dart';
import '../../domain/entities/medical_center.dart';
import '../widgets/doctor_card.dart';
import '../widgets/medical_center_card.dart';

class HomeScreen extends StatelessWidget {
  final DoctorRepositoryImpl doctorRepository = DoctorRepositoryImpl();
  final MedicalCenterRepositoryImpl medicalCenterRepository =
  MedicalCenterRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical App"),
      ),
      body: FutureBuilder(
        future: Future.wait([
          doctorRepository.getDoctors(),
          medicalCenterRepository.getMedicalCenters(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            final doctors = snapshot.data?[0] as List<Doctor>;
            final medicalCenters = snapshot.data?[1] as List<MedicalCenter>;

            return ListView(
              children: [
                ...doctors.map((doctor) => DoctorCard(doctor: doctor)),
                ...medicalCenters
                    .map((center) => MedicalCenterCard(center: center)),
              ],
            );
          }
        },
      ),
    );
  }
}
