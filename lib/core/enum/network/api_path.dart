enum ApiPath {
  deals('/deals'),
  steamDeals('/deals?storeID=1'),
  stores('/stores'),
  games('/games');

  const ApiPath(this.path);
  final String path;
}
