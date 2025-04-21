import 'package:flutter/foundation.dart';

import 'package:coinllector_app/domain/usecases/user_prefs/get_coin_mints.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_micro_states.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_removal_confirmation.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_user_profile_image.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_coin_mints.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_micro_states.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_removal_confirmation.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_user_profile_image.dart';

import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class UserPreferencesProvider extends ChangeNotifier {
  // Private Use Cases --------------------------------------------------------

  final GetCoinMintsPrefsUseCase _getCoinMints;
  final SetCoinMintsPrefsUseCase _setCoinMints;
  final GetMicroStatesPrefsUseCase _getMicroStates;
  final SetMicroStatesPrefsUseCase _setMicroStates;
  final GetCoinQualityPrefsUseCase _getCoinQuality;
  final SetCoinQualityPrefsUseCase _setCoinQuality;
  final GetRemovalConfirmationPrefsUseCase _getRemovalConfirmation;
  final SetRemovalConfirmationPrefsUseCase _setRemovalConfirmation;
  final GetUserProfileImagePrefsUseCase _getUserProfileImage;
  final SetUserProfileImagePrefsUseCase _setUserProfileImage;

  // State --------------------------------------------------------------------

  bool coinMints = false;
  bool microStates = true;
  bool coinQuality = false;
  bool removalConfirmation = true;
  String? profileImagePath;

  // Constructor (private fields) ----------------------------------------------

  UserPreferencesProvider({
    required GetCoinMintsPrefsUseCase getCoinMints,
    required SetCoinMintsPrefsUseCase setCoinMints,
    required GetMicroStatesPrefsUseCase getMicroStates,
    required SetMicroStatesPrefsUseCase setMicroStates,
    required GetCoinQualityPrefsUseCase getCoinQuality,
    required SetCoinQualityPrefsUseCase setCoinQuality,
    required GetRemovalConfirmationPrefsUseCase getRemovalConfirmation,
    required SetRemovalConfirmationPrefsUseCase setRemovalConfirmation,
    required GetUserProfileImagePrefsUseCase getUserProfileImage,
    required SetUserProfileImagePrefsUseCase setUserProfileImage,
  }) : _getCoinMints = getCoinMints,
       _setCoinMints = setCoinMints,
       _getMicroStates = getMicroStates,
       _setMicroStates = setMicroStates,
       _getCoinQuality = getCoinQuality,
       _setCoinQuality = setCoinQuality,
       _getRemovalConfirmation = getRemovalConfirmation,
       _setRemovalConfirmation = setRemovalConfirmation,
       _getUserProfileImage = getUserProfileImage,
       _setUserProfileImage = setUserProfileImage;

  // Init ---------------------------------------------------------------------

  Future<void> init() async {
    // COIN MINTS
    final coinMintsResult = await _getCoinMints(NoParams(null));
    switch (coinMintsResult) {
      case Success(value: final v):
        coinMints = v;
      case Error():
        coinMints = false;
    }

    // MICRO STATES
    final microStatesResult = await _getMicroStates(NoParams(null));
    switch (microStatesResult) {
      case Success(value: final v):
        microStates = v;
      case Error():
        microStates = true;
    }

    // COIN QUALITY
    final coinQualityResult = await _getCoinQuality(NoParams(null));
    switch (coinQualityResult) {
      case Success(value: final v):
        coinQuality = v;
      case Error():
        coinQuality = false;
    }

    // REMOVAL CONFIRMATION
    final removalConfirmationResult = await _getRemovalConfirmation(
      NoParams(null),
    );
    switch (removalConfirmationResult) {
      case Success(value: final v):
        removalConfirmation = v;
      case Error():
        removalConfirmation = true;
    }

    // PROFILE IMAGE
    final profileImageResult = await _getUserProfileImage(NoParams(null));
    switch (profileImageResult) {
      case Success(value: final v):
        profileImagePath = v;
      case Error():
        profileImagePath = null;
    }

    notifyListeners();
  }

  // Updates ------------------------------------------------------------------

  Future<void> updateCoinMints(bool value) async {
    await _setCoinMints(Params(value));
    coinMints = value;
    notifyListeners();
  }

  Future<void> updateMicroStates(bool value) async {
    await _setMicroStates(Params(value));
    microStates = value;
    notifyListeners();
  }

  Future<void> updateCoinQuality(bool value) async {
    await _setCoinQuality(Params(value));
    coinQuality = value;
    notifyListeners();
  }

  Future<void> updateRemovalConfirmation(bool value) async {
    await _setRemovalConfirmation(Params(value));
    removalConfirmation = value;
    notifyListeners();
  }

  Future<void> updateProfileImage(String path) async {
    await _setUserProfileImage(Params(path));
    profileImagePath = path;
    notifyListeners();
  }
}
