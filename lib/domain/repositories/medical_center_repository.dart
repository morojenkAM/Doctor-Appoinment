import '../entities/medical_center.dart';

abstract class MedicalCenterRepository {
  Future<List<MedicalCenter>> getMedicalCenters();
}
