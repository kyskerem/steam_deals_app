import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/constants/string/string_constants.dart';
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
        _informationsRow([
          Text(
            '${StringConstants.retailPrice}: ${deal?.gameInfo?.retailPrice}\$',
          ),
          Text(
            '${StringConstants.salePrice}: ${deal?.gameInfo?.salePrice}\$',
          ),
        ]),
        _informationsRow([
          Text(
            '${StringConstants.metacriticStore}: ${deal?.gameInfo?.metacriticScore}%',
          ),
          Text(
            '${StringConstants.steamRating}: ${deal?.gameInfo?.steamRatingPercent}%',
          ),
        ]),
        _pageButtonRow(),
        const Spacer(
          flex: 2,
        )
      ],
    );
  }

  ListTile _informationsRow(List<Widget> children) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children,
      ),
    );
  }

  ListTile _pageButtonRow() {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _pageButton(true),
          _pageButton(
            false,
          ),
        ],
      ),
    );
  }

  TextButton _pageButton(bool isSteam) {
    return TextButton(
      onPressed: () async {
        await _launcUrl(isSteam ? steamUrl : metacriticUrl);
      },
      child: Text(
        isSteam ? StringConstants.steamPage : StringConstants.metacriticPage,
      ),
    );
  }
}
