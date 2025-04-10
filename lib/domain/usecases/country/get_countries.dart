import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/entities/country.dart';

class GetCountriesUseCase implements UseCase<List<Country>, NoParams> {
  final ICountryRepository _repository;

  GetCountriesUseCase(this._repository);

  @override
  Future<Result<List<Country>>> call(NoParams params) async {
    return await _repository.getAllCountries();
  }
}
