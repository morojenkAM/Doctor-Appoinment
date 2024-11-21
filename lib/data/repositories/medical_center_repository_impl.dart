import '../../domain/entities/medical_center.dart';
import '../../domain/repositories/medical_center_repository.dart';
import '../datasources/mock_datasource.dart';
import '../models/medical_center_model.dart';

class MedicalCenterRepositoryImpl implements MedicalCenterRepository {
  @override
  Future<List<MedicalCenter>> getMedicalCenters() async {
    return MockDataSource.medicalCenters
        .map((e) => MedicalCenterModel.fromJson(e))
        .toList();
  }
}
