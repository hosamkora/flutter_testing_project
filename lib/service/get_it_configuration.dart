import 'package:flutter_test_ci_cd/service/get_it_configuration.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configure() => $initGetIt(getIt);
