import 'package:coinllector_app/data/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/body/coins_filter_value_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class CoinsFilterView extends StatefulWidget {
  const CoinsFilterView({super.key, required this.type});

  final CoinType type;

  @override
  State<CoinsFilterView> createState() => _CoinsFilterViewState();
}

class _CoinsFilterViewState extends State<CoinsFilterView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  final _log = Logger('COINS_BY_TYPE_VIEW');
  List<Coin>? _coins;
  Set<int> _ownedCoins = {}; // Track owned coins

  @override
  void initState() {
    super.initState();
    _loadCoins();
  }

  Future<void> _loadCoins() async {
    _log.info('Loading coins for type: ${widget.type}');
    await _databaseService.database;

    final coins = await _databaseService.coinRepository.getCoinsByType(
      widget.type,
    );

    final ownedCoins =
        await _databaseService.userCoinRepository.getOwnedCoins();

    setState(() {
      _coins = coins;
      _ownedCoins = ownedCoins.toSet();
    });
  }

  Future<void> _toggleCoinOwnership(int coinId) async {
    final isOwned = _ownedCoins.contains(coinId);

    if (isOwned) {
      await _databaseService.userCoinRepository.removeCoin(coinId);
      _ownedCoins.remove(coinId);
    } else {
      await _databaseService.userCoinRepository.addCoin(coinId);
      _ownedCoins.add(coinId);
    }

    setState(() {}); // Refresh UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CoinBanner(
                type: widget.type,
                owned: _ownedCoins.length,
                total: _coins?.length ?? 0,
              ),
              Expanded(
                child: CoinsFilterValueGrid(
                  coins: _coins,
                  ownedCoins: _ownedCoins,
                  onToggleCoin: _toggleCoinOwnership,
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
