import 'package:coinllector_app/utils/result.dart';

abstract class UseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}

class Params<T> {
  final T data;

  Params(this.data);
}

class NoParams {
  final void data;
  NoParams(this.data);
}
