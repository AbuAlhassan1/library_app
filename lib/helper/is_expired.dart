bool isExpired(int expireInSeconds) {
  int currentUnixTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  
  return currentUnixTime >= expireInSeconds;
}