import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/body/coins_filter_value_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header.dart';
import 'package:coinllector_app/shared/components/bottom_sheets/year_sheet.dart';
import 'package:coinllector_app/shared/components/confirmation_dialog.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/years_enum.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class ValueFilterView extends StatefulWidget {
  const ValueFilterView({super.key, required this.type});

  final CoinType type;

  @override
  State<ValueFilterView> createState() => _ValueFilterViewState();
}

class _ValueFilterViewState extends State<ValueFilterView> {
  final _log = Logger('COINS_BY_TYPE_VIEW');

  late Future<List<Coin>> _coinsFuture;
  late Future<int> _totalYearCountFuture;
  late Future<int> _ownedYearCountFuture;

  String? _selectedYear;

  @override
  void initState() {
    super.initState();

    _selectedYear = "2004";

    // Load coins with the default year
    _coinsFuture =
        widget.type == CoinType.COMMEMORATIVE
            ? _loadCoinsForTypeWithFilter("2004")
            : _loadCoinsForType();

    _totalYearCountFuture =
        widget.type == CoinType.COMMEMORATIVE
            ? _loadCoinCountForTypeWithFilter("2004")
            : _loadCoinCountForType();

    _ownedYearCountFuture = _loadOwnedCoinCountForYear("2004");
  }

  Future<List<Coin>> _loadCoinsForType() async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);
    try {
      _log.info('Loading coins for type: ${widget.type}');
      return await coinProvider.getCoinsByType(widget.type);
    } catch (e, s) {
      _log.severe('Error loading coins for type ${widget.type}', e, s);
      rethrow;
    }
  }

  Future<List<Coin>> _loadCoinsForTypeWithFilter(String year) async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);
    try {
      _log.info('Loading coins for type: ${widget.type}, year: $year');
      return await coinProvider.getCoinsByType(widget.type, year: year);
    } catch (e, s) {
      _log.severe(
        'Error loading coins for type ${widget.type}, year $year',
        e,
        s,
      );
      rethrow;
    }
  }

  Future<int> _loadCoinCountForTypeWithFilter(String year) async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);
    try {
      _log.info('Loading coin count for type: ${widget.type}, year: $year');
      return await coinProvider.getTypeCoinCount(widget.type, startDate: year);
    } catch (e, s) {
      _log.severe(
        'Error loading coin count for type ${widget.type}, year $year',
        e,
        s,
      );
      rethrow;
    }
  }

  Future<int> _loadCoinCountForType() async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);
    try {
      _log.info('Loading coin count for type: ${widget.type}');
      return await coinProvider.getTypeCoinCount(widget.type);
    } catch (e, s) {
      _log.severe('Error loading coin count for type ${widget.type}', e, s);
      rethrow;
    }
  }

  Future<int> _loadOwnedCoinCountForYear(String year) async {
    if (widget.type != CoinType.COMMEMORATIVE) return 0;

    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );
    try {
      _log.info('Loading coin count for type: ${widget.type}, year: $year');
      return await userCoinProvider.getOwnedCoinCountForType(
        widget.type,
        startDate: year,
      );
    } catch (e, s) {
      _log.severe(
        ' Error loading total coin count for type ${widget.type}, year $year,',
        e,
        s,
      );
      return 5; // Default fallback
    }
  }

  void _openYearSelectionModal() async {
    try {
      final CoinYear? selectedYear = await showYearSelectionModal(context);

      if (selectedYear != null) {
        final yearString = selectedYear.name.substring(1);
        setState(() {
          _selectedYear = yearString;
          _coinsFuture = _loadCoinsForTypeWithFilter(yearString);
          _totalYearCountFuture = _loadCoinCountForTypeWithFilter(yearString);
          _ownedYearCountFuture = _loadOwnedCoinCountForYear(yearString);
        });
      }
    } catch (e, s) {
      _log.severe('Error opening year selection modal', e, s);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error opening year list: ${e.toString()}')),
        );
      }
    }
  }

  Future _handleToggleOwnership(int coinId) async {
    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );
    final userPrefsProvider = Provider.of<UserPreferencesProvider>(
      context,
      listen: false,
    );
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);

    try {
      final isOwned = await userCoinProvider.checkIfUserOwnsCoin(coinId);

      // Only show confirmation dialog if needed
      if (isOwned && userPrefsProvider.removalConfirmation) {
        try {
          // Get the coin to check its country
          final coin = await coinProvider.getCoinById(coinId);

          // Skip confirmation for German coins
          if (coin.country != CountryNames.GERMANY) {
            if (!mounted) return;
            final confirmed = await ConfirmationDialog.show(context: context);
            if (!confirmed) return;
          }
        } catch (e) {
          _log.warning(
            'Error fetching coin details, showing confirmation dialog as fallback',
            e,
          );
          // If there's any error fetching the coin, fall back to showing the dialog
          if (!mounted) return;
          final confirmed = await ConfirmationDialog.show(context: context);
          if (!confirmed) return;
        }
      }

      await userCoinProvider.toggleCoinOwnership(coinId);

      // Update the year count if needed (from your second example)
      if (_selectedYear != null && widget.type == CoinType.COMMEMORATIVE) {
        setState(() {
          _ownedYearCountFuture = _loadOwnedCoinCountForYear(_selectedYear!);
        });
      }
    } catch (e, s) {
      _log.severe('Error toggling coin ownership for coinId $coinId', e, s);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating coin status: ${e.toString()}'),
          ),
        );
      }
    }
  }
  // UI ------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final coinProvider = context.watch<CoinProvider>();
    final userCoinProvider = context.watch<UserCoinProvider>();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // HEADER BANNER
              FutureBuilder<int>(
                future: coinProvider.getTypeCoinCount(widget.type),
                builder: (context, totalSnapshot) {
                  final totalCoins = totalSnapshot.data ?? 0;
                  return FutureBuilder<int>(
                    future: userCoinProvider.getOwnedCoinCountForType(
                      widget.type,
                    ),

                    builder: (context, ownedSnapshot) {
                      final ownedCoins = ownedSnapshot.data ?? 0;
                      return CoinTypeBanner(
                        type: widget.type,
                        owned: ownedCoins,
                        total: totalCoins,
                        isCommemorative: widget.type == CoinType.COMMEMORATIVE,
                        onCommemorativeButtonPressed: _openYearSelectionModal,
                      );
                    },
                  );
                },
              ),

              // GRID (BODY)
              Expanded(
                child:
                    widget.type == CoinType.COMMEMORATIVE
                        ? _buildCommemorativeList(userCoinProvider.ownedCoinIds)
                        : _buildStandardGrid(userCoinProvider.ownedCoinIds),
              ),
            ],
          ),

          // APP BAR
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.adaptive.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStandardGrid(Set<int> ownedCoinIds) {
    return FutureBuilder<List<Coin>>(
      future: _coinsFuture,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          _log.severe(
            'Error loading coins in _buildStandardGrid',
            snapshot.error,
          );
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Failed to load coins: ${snapshot.error}'),
              ],
            ),
          );
        }

        return CoinsFilterValueGrid(
          coins: snapshot.data,
          ownedCoins: ownedCoinIds,
          onToggleCoin: _handleToggleOwnership,
        );
      },
    );
  }

  Widget _buildCommemorativeList(Set<int> ownedCoinIds) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_selectedYear != null)
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.p16,
              top: AppSizes.p16,
              bottom: AppSizes.p16,
            ),
            child: Row(
              children: [
                Text(
                  _selectedYear!,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: AppSizes.p8),
                FutureBuilder<int>(
                  future: _totalYearCountFuture,
                  builder: (context, countSnapshot) {
                    final totalCount = countSnapshot.data ?? 0;

                    return FutureBuilder<int>(
                      future: _ownedYearCountFuture,
                      builder: (context, ownedSnapshot) {
                        final owned = ownedSnapshot.data;

                        return Text(
                          "$owned/$totalCount",
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        Expanded(
          child: FutureBuilder<List<Coin>>(
            future: _coinsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppSizes.p16),
                    child: Text('Could not load coins for $_selectedYear.'),
                  ),
                );
              }

              return CoinsFilterValueGrid(
                coins: snapshot.data,
                ownedCoins: ownedCoinIds,
                onToggleCoin: _handleToggleOwnership,
              );
            },
          ),
        ),
      ],
    );
  }
}
