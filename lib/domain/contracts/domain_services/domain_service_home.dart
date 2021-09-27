import '/infrastructure/repositories/repository_home.dart';

import '/domain/contracts/repositories/interfaces/repository_home_interface.dart';
import 'interfaces/domain_service_home_interface.dart';

class DomainServiceHome extends IDomainServiceHome {
  static final DomainServiceHome _singleton = DomainServiceHome._internal();
  factory DomainServiceHome() {
    return _singleton;
  }
  DomainServiceHome._internal();

  static final IRepositoryHome repository = RepositoryHome();
}
