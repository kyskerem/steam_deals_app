enum ApiPath {
  deals('/deals'),
  stores('/stores'),
  games('/games');

  const ApiPath(this.path);
  final String path;
}
