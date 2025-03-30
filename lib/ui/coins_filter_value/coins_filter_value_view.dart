import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/ui/coins_filter_value/widgets/body/coins_filter_value_grid.dart';

import 'package:coinllector_app/ui/coins_filter_value/widgets/header/header.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:coinllector_app/models/coin.dart';
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
    setState(() => _coins = coins);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // BANNER
              CoinBanner(type: widget.type, owned: 0, total: 12),
              // CONTENT
              Expanded(child: CoinsFilterValueGrid(coins: _coins)),
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
