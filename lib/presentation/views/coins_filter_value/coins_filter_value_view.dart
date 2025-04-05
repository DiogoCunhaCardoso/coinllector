import 'package:coinllector_app/data/datasources/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/body/coins_filter_value_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class CoinsFilterView extends StatelessWidget {
  const CoinsFilterView({super.key, required this.type});

  final CoinType type;

  @override
  Widget build(BuildContext context) {
    return _CoinsFilterViewContent(type: type);
  }
}

class _CoinsFilterViewContent extends StatefulWidget {
  const _CoinsFilterViewContent({required this.type});

  final CoinType type;

  @override
  State createState() => _CoinsFilterViewContentState();
}

class _CoinsFilterViewContentState extends State<_CoinsFilterViewContent> {
  final DatabaseService _databaseService = DatabaseService.instance;

  final _log = Logger('COINS_BY_TYPE_VIEW');
  List<Coin>? _coins;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadCoins();
  }

  Future _loadCoins() async {
    setState(() {
      _isLoading = true;
    });

    _log.info('Loading coins for type: ${widget.type}');
    await _databaseService.database;

    final coinsResult = await _databaseService.coinRepository.getCoinsByType(
      widget.type,
    );

    switch (coinsResult) {
      case Success():
        setState(() {
          _coins = coinsResult.value;
          _isLoading = false;
        });
      case Error():
        _log.info('Error loading coins: ${coinsResult.error}');
        setState(() {
          _isLoading = false;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final userCoinProvider = context.watch<UserCoinProvider>();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CoinBanner(
                type: widget.type,
                owned:
                    userCoinProvider.ownedCoins
                        .where(
                          (id) => _coins?.any((coin) => coin.id == id) ?? false,
                        )
                        .length,
                total: _coins?.length ?? 0,
              ),
              Expanded(
                child:
                    _isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CoinsFilterValueGrid(
                          coins: _coins,
                          ownedCoins: userCoinProvider.ownedCoins,
                          onToggleCoin: (coinId) async {
                            await userCoinProvider.toggleCoinOwnership(coinId);
                          },
                        ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
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
