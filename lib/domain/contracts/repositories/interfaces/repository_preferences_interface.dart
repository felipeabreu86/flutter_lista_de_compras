/// Classe abstrata que define os métodos relacionados à utilização do shared
/// preferences que é um conjunto de chaves-valor armazenados no aplicativo.
abstract class IRepositoryPreferences {
  Future<bool> removeKey(String chave);
  Future<bool> clear();

  Future<bool> getBoolValue(String key);
  Future<bool> setBoolValue(String chave, bool valor);

  Future<double?> getDoubleValue(String chave);
  Future<bool> setDoubleValue(String chave, double valor);

  Future<String?> getStringValue(String chave);
  Future<bool> setStringValue(String chave, String valor);

  Future<int?> getIntValue(String chave);
  Future<bool> setIntValue(String chave, int valor);
}
