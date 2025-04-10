import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class GetCountryByEnumUseCase
    implements UseCase<Country?, Params<CountryNames>> {
  final ICountryRepository _repository;

  GetCountryByEnumUseCase(this._repository);

  @override
  Future<Result<Country?>> call(Params<CountryNames> params) async {
    return await _repository.getCountryByEnum(params.data);
  }
}
