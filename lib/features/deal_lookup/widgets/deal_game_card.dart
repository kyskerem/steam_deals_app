import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/api/api_constants.dart';
import '../model/deal_lookup_model.dart';

class GameDealCard extends StatelessWidget {
  const GameDealCard({
    required this.deal,
    super.key,
  });

  final DealLookupModel? deal;
  String get steamUrl =>
      '${ApiContants.steamAppBaseUrl}${deal?.gameInfo?.steamAppID}';

  String get metacriticUrl =>
      '${ApiContants.metacriticBaseUrl}${deal?.gameInfo?.metacriticLink}';

  Future<void> _launcUrl(String url) async {
    final uri = Uri.parse(url);

    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(
          flex: 2,
        ),
        Image(
          image: NetworkImage(
            deal?.gameInfo?.thumb ?? '',
            scale: .5,
          ),
        ),
        const Spacer(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Retail price: ${deal?.gameInfo?.retailPrice}\$',
              ),
              Text(
                'Sale price: ${deal?.gameInfo?.salePrice}\$',
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Metacritic score: ${deal?.gameInfo?.metacriticScore}%',
              ),
              Text(
                'Steam Rating: ${deal?.gameInfo?.steamRatingPercent}%',
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () async {
                  await _launcUrl(steamUrl);
                },
                child: const Text('Steam Page'),
              ),
              TextButton(
                onPressed: () async {
                  await _launcUrl(metacriticUrl);
                },
                child: const Text('Metacritic Page'),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 2,
        )
      ],
    );
  }
}
