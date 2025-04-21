import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';

class GetCountriesUseCase implements UseCase<List<Country>, NoParams> {
  final ICountryRepository _repository;
  final IUserPreferencesRepository _prefsRepository;

  GetCountriesUseCase(this._repository, this._prefsRepository);

  @override
  Future<Result<List<Country>>> call(NoParams params) async {
    final result = await _repository.getAllCountries();

    switch (result) {
      case Success(value: final countries):
        final showMicrostates = await _prefsRepository.getMicroStates();

        if (!showMicrostates) {
          final filtered =
              countries
                  .where(
                    (country) => !Microstates.countries.contains(country.name),
                  )
                  .toList();
          return Result.success(filtered);
        }

        return result;

      case Error(error: final e):
        return Result.error(e);
    }
  }
}
