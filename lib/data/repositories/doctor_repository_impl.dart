import '../../domain/entities/doctor.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../datasources/mock_datasource.dart';
import '../models/doctor_model.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  @override
  Future<List<Doctor>> getDoctors() async {
    return MockDataSource.doctors.map((e) => DoctorModel.fromJson(e)).toList();
  }
}

