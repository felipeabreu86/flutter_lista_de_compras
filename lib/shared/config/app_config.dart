import 'package:flutter/foundation.dart';
import 'package:package_info/package_info.dart';

/// Provê informações gerais do aplicativo.
class AppConfig {
  static final AppConfig _singleton = AppConfig._internal();
  factory AppConfig() {
    return _singleton;
  }
  AppConfig._internal() {
    _initPackageInfo();
  }

  /// Obtém as informações do app e as armazena em [_packageInfo].
  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    _packageInfo = info;
  }

  /// Informações do app.
  PackageInfo _packageInfo = PackageInfo(
    appName: '',
    packageName: '',
    version: '',
    buildNumber: '',
  );

  /// Retorna o nome do aplicativo.
  String get appName => _packageInfo.appName;

  /// Retorna o nome do pacote do aplicativo.
  String get packageName => _packageInfo.packageName;

  /// Retorna a versão do aplicativo.
  String get version => _packageInfo.version;

  /// Retorna o build number do aplicativo.
  String get buildNumber => _packageInfo.buildNumber;

  /// Retorna se o app está sendo executado no modo Debug.
  static bool get isDebugMode => kReleaseMode ? false : true;

  /// Retorna o caminho completo da imagem dado o seu nome.
  static String getImagePath(String fileName) => "assets/images/$fileName";

  /// Retorna o caminho completo do ícone dado o seu nome.
  static String getIconsPath(String iconName) => "assets/icons/$iconName";
}
