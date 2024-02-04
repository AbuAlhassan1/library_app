abstract class StorageInterFace {
  Future<void> store(String key, String value);
  Future<String?> read(String key);
  Future<Map<String, String>> readAll(Map data);
  Future<void> delete(String key);
  Future<void> deleteAll();
}