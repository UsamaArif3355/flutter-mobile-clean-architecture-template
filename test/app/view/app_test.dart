// Copyright (c) 2022,Usama Arif
// https://github.com/UsamaArif3355/flutter-mobile-clean-architecture-template
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helpers/helpers.dart';

void main() {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await configureInjector();
  });

  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpAppRouter(
        '/',
        (child) => child,
        isConnected: false,
      );
      expect(find.byType(MaterialApp, skipOffstage: false), findsOneWidget);
    });
  });
}
