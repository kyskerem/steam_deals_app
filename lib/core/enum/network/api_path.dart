enum ApiPath {
  deals('/deals'),
  games('/games');

  const ApiPath(this.path);
  final String path;
}
