class WatchProviderEntity {
  final int? id;
  final Map<String, WatchRegion>? results;

  WatchProviderEntity({
    this.id = -1,
    this.results = const {},
  });
}

class WatchRegion {
  final String? link;
  final List<ProviderDetails>? flatrate;
  final List<ProviderDetails>? buy;
  final List<ProviderDetails>? rent;
  final List<ProviderDetails>? free;

  WatchRegion({
    this.link = '',
    this.flatrate = const [],
    this.buy = const [],
    this.rent = const [],
    this.free = const [],
  });
}

class ProviderDetails {
  final String? logoPath;
  final int? providerId;
  final String? providerName;
  final int? displayPriority;

  ProviderDetails({
    this.logoPath = '',
    this.providerId = -1,
    this.providerName = '',
    this.displayPriority = -1,
  });
}


class WatchProviderModal {
  final String currentLocal;
  final List<String> allLocal;
  final WatchRegion? watchRegion;

  WatchProviderModal({
    this.currentLocal = '',
    this.allLocal = const [],
    this.watchRegion
  });
}