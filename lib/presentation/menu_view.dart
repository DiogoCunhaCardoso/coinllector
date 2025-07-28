import 'package:coinllector_app/shared/components/drawer.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key, required this.child});
  final Widget child;

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int _selectedIndex = 0;

  BannerAd? _bannerAd;
  bool _isBannerAdLoaded = false;

  final String adUnitId = 'ca-app-pub-1472816996433027/1279577988';

  bool _didLoadBanner = false; // Prevents multiple loads

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_didLoadBanner) {
      _didLoadBanner = true;
      _loadAdaptiveBanner();
    }
  }

  Future<void> _loadAdaptiveBanner() async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
          MediaQuery.of(context).size.width.truncate(),
        );

    if (size == null) return;

    final banner = BannerAd(
      size: size,
      adUnitId: adUnitId,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
            _isBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    );

    await banner.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  final List<String> _routes = [
    AppRoutes.coinsView,
    AppRoutes.profileView,
    AppRoutes.settingsView,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    context.go(_routes[index]);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: Column(
        children: [
          Expanded(child: widget.child),
          if (_isBannerAdLoaded && _bannerAd != null)
            Container(
              alignment: Alignment.center,
              width: _bannerAd!.size.width.toDouble(),
              height: _bannerAd!.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd!),
            ),
        ],
      ),
    );
  }
}
