enum Lotties {
  connectionerror('no-connection'),
  error('something-went-wrong');

  const Lotties(this.value);
  final String value;

  String get lottiePath {
    return 'assets/lottie/$value.json';
  }
}
