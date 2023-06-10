enum ApiPath {
  deals('/deals'),
  dealWithId('/deals?id='),
  steamDeals('/deals?storeID=1'),
  stores('/stores');

  const ApiPath(this.path);
  final String path;

  String getWithIdPath(String id) {
    return path + id;
  }
}
