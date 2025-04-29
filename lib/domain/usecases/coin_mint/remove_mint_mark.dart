import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class RemoveMintMarkParams {
  final int coinId;
  final MintMark mintMark;

  RemoveMintMarkParams(this.coinId, this.mintMark);
}

class RemoveMintMarkUseCase implements UseCase<void, RemoveMintMarkParams> {
  final ICoinMintRepository repository;

  RemoveMintMarkUseCase(this.repository);

  @override
  Future<Result<void>> call(RemoveMintMarkParams params) async {
    return await repository.removeMintMark(params.coinId, params.mintMark);
  }
}
