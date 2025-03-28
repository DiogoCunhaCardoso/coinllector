import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/themes/typography.dart';
import 'package:coinllector_app/ui/coins/widgets/content_grid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:coinllector_app/models/coin.dart';
import 'package:logging/logging.dart';

class CoinsByTypeView extends StatefulWidget {
  const CoinsByTypeView({super.key, required this.type});

  final CoinType type;

  @override
  State<CoinsByTypeView> createState() => _CoinsByTypeViewState();
}

class _CoinsByTypeViewState extends State<CoinsByTypeView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  final _log = Logger('COINS_BY_TYPE_VIEW');
  List<Map<String, dynamic>>? _coins;

  @override
  void initState() {
    super.initState();
    _checkDatabase();
    _loadCoins();
  }

  Future<void> _checkDatabase() async {
    await _databaseService.database;
    final db = await _databaseService.database;
    final allCoins = await db.query(
      'coins',
    ); // Use the table name directly for debugging
    _log.info('Database check - Total coins: ${allCoins.length}');
    for (var coin in allCoins) {
      _log.info('Coin in DB - Type: ${coin['type']}, ID: ${coin['id']}');
    }
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
              // Header container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  gradient: AppColors.gradient,
                ),
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + 24,
                  left: 24,
                  right: 24,
                  bottom: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              right: 92 / 3 * 2,
                              child: Opacity(
                                opacity: 0.5,
                                child: _CoinImage(type: widget.type.name),
                              ),
                            ),
                            Positioned(
                              right: -92 / 3 * 2,
                              child: Opacity(
                                opacity: 0.5,
                                child: _CoinImage(type: widget.type.name),
                              ),
                            ),
                            _CoinImage(type: widget.type.name),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.p16),
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.bodyMedium,
                        children: const [
                          TextSpan(text: "4/"),
                          TextSpan(text: "22"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Content Area
              Expanded(child: _buildContent()),
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

  Widget _buildContent() {
    if (_coins == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_coins!.isEmpty) {
      _log.warning('No coins found for type: ${widget.type.name}');
      return const Center(child: Text('No coins available'));
    }

    return ContentGrid(
      coins: _coins!,
      onCoinTap: (type) => context.go(AppRoutes.coinsWithType(type)),
    );
  }
}

class _CoinImage extends StatelessWidget {
  final String type;

  const _CoinImage({required this.type});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/value/value-${type.toLowerCase()}.png",
      width: 92,
      height: 92,
      fit: BoxFit.cover,
    );
  }
}
