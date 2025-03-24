import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:orgsync/domain/entities/department_entity.dart';
import 'package:orgsync/domain/repository/department_repository.dart';
import 'package:orgsync/infra/failure/failure.dart';

@injectable
class RemoveUserDepartmentUsecase {
  final DepartmentRepository _repository;

  RemoveUserDepartmentUsecase({required DepartmentRepository repository})
    : _repository = repository;

  Future<Either<Failure, DepartmentEntity>> call(int id, List<String> users) {
    return _repository.removeMemberFromDepartment(id, users);
  }
}
