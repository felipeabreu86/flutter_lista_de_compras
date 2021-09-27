import '/domain/contracts/repositories/interfaces/repository_preferences_interface.dart';
import '/infrastructure/services/shared_preferences_service.dart';

class RepositoryPreferences extends IRepositoryPreferences {
  static final IRepositoryPreferences repository = RepositoryPreferences();
  static final RepositoryPreferences _singleton =
      RepositoryPreferences._internal();
  factory RepositoryPreferences() {
    return _singleton;
  }
  RepositoryPreferences._internal();

  @override
  Future<bool> getBoolValue(String key) async {
    bool? valor = await SharedPreferencesService.getBool(key);
    return valor ?? false;
  }

  @override
  Future<bool> clear() async {
    bool retorno = await SharedPreferencesService.clear();
    return retorno;
  }

  @override
  Future<bool> removeKey(String chave) async {
    bool retorno = await SharedPreferencesService.removeKey(chave);
    return retorno;
  }

  @override
  Future<double?> getDoubleValue(String chave) async {
    double? valor = await SharedPreferencesService.getDouble(chave);
    return valor;
  }

  @override
  Future<int?> getIntValue(String chave) async {
    int? valor = await SharedPreferencesService.getInt(chave);
    return valor;
  }

  @override
  Future<String?> getStringValue(String chave) async {
    String? valor = await SharedPreferencesService.getString(chave);
    return valor;
  }

  @override
  Future<bool> setBoolValue(String chave, bool valor) async {
    bool retorno = await SharedPreferencesService.setBool(chave, valor);
    return retorno;
  }

  @override
  Future<bool> setDoubleValue(String chave, double valor) async {
    bool retorno = await SharedPreferencesService.setDouble(chave, valor);
    return retorno;
  }

  @override
  Future<bool> setIntValue(String chave, int valor) async {
    bool retorno = await SharedPreferencesService.setInt(chave, valor);
    return retorno;
  }

  @override
  Future<bool> setStringValue(String chave, String valor) async {
    bool retorno = await SharedPreferencesService.setString(chave, valor);
    return retorno;
  }
}
