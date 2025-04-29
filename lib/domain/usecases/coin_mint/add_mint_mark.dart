import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class AddMintMarkParams {
  final int coinId;
  final MintMark mintMark;

  AddMintMarkParams(this.coinId, this.mintMark);
}

class AddMintMarkUseCase implements UseCase<void, AddMintMarkParams> {
  final ICoinMintRepository repository;

  AddMintMarkUseCase(this.repository);

  @override
  Future<Result<void>> call(AddMintMarkParams params) async {
    return await repository.addMintMark(params.coinId, params.mintMark);
  }
}
