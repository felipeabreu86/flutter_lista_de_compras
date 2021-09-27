import '/domain/contracts/repositories/interfaces/repository_home_interface.dart';

class RepositoryHome extends IRepositoryHome {
  static final RepositoryHome _singleton = RepositoryHome._internal();
  factory RepositoryHome() {
    return _singleton;
  }
  RepositoryHome._internal();
}
