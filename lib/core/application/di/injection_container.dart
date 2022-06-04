import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:people_index/core/application/di/injection_container.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<GetIt> configure() async => $initGetIt(getIt);
