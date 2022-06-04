// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:people_index/app.dart';
import 'package:people_index/bootstrap.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/config_reader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  await ConfigReader.initialize();
  await bootstrap(() => const App());
}
